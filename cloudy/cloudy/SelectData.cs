﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Globalization;

namespace cloudy
{
    class SelectData
    {
        Microsoft.Office.Interop.Word.Application wordApp;
        Microsoft.Office.Interop.Word.Document wordDoc;

        string filePath;

        public bool WriteData(List<Weather> selectXY, List<Weather> rainData)
        {
            try
            {
                filePath = AppDomain.CurrentDomain.BaseDirectory.ToString();
                wordApp = new Microsoft.Office.Interop.Word.Application();

                wordDoc = wordApp.Documents.Add(filePath + "\\Шаблон_Пошуку.dotx");
            }
            catch (Exception ex)
            {
                MainWindow.ErrorShow(ex.Message + char.ConvertFromUtf32(13) +
                    "Помістіть файл Шаблон_Пошуку.dotx" + char.ConvertFromUtf32(13) +
                    "у каталог із ехе-файлом програми і повторіть збереження", "Помилка");
                return false;
            }

            try
            {
                ReplaceText(MainWindow.selectedCity, "[X]");
                ReplaceText(Convert.ToString(AverageTemp(selectXY)), "[T]");
                ReplaceText(MainWindow.selectedMonth, "[Y]");
                ReplaceText(Convert.ToString(AveragePres(selectXY)), "[P]");

                ReplaceText(rainData);

                wordDoc.Save();
            }
            catch (Exception ex)
            {
                MainWindow.ErrorShow(ex.Message + char.ConvertFromUtf32(13) +
                    "Помилка збереження відібраних даних", "Помилка");
                return false;
            }
            return true;
        }

        private void ReplaceText(string textToReplace, string replacedText)
        {
            Object missing = Type.Missing;
            Object wrap = Microsoft.Office.Interop.Word.WdFindWrap.wdFindContinue;
            Object replace = Microsoft.Office.Interop.Word.WdReplace.wdReplaceAll;

            Microsoft.Office.Interop.Word.Range content;
            content = wordDoc.Range(wordDoc.Content.Start, wordDoc.Content.End);

            Microsoft.Office.Interop.Word.Find find = wordApp.Selection.Find;

            find.Text = replacedText;
            find.Replacement.Text = textToReplace;

            find.Execute(
                FindText: Type.Missing,
                MatchCase: false,
                MatchWholeWord: false,
                MatchWildcards: false,
                MatchAllWordForms: false,
                Forward: true,
                Wrap: wrap,
                Format: false,
                ReplaceWith: missing,
                Replace: replace
             );

        }

        private void ReplaceText(List<Weather> rainData)
        {
            if (rainData == null)
            {
                wordDoc.Tables[1].Cell(1, 2).Range.Text = Convert.ToString(0);
                return;
            }
            for (int i = 0; i < rainData.Count; i++)
            {
                string month = rainData[i].month;

                month = month.Replace("ень", "ня");
                month = month.Replace("пад", "пада");
                month = month.Replace("ий", "ого");

                wordDoc.Tables[2].Rows.Add();
                wordDoc.Tables[2].Cell(2 + i, 1).Range.Text = Convert.ToString(i + 1);
                wordDoc.Tables[2].Cell(2 + i, 2).Range.Text = rainData[i].day + " " + month;
            }

            wordDoc.Tables[1].Cell(1, 2).Range.Text = Convert.ToString(rainData.Count);
        }

        private double AverageTemp(List<Weather> weathers)
        {
            if(weathers == null)
            {
                return 0;
            }
            double result = 0;
            for(int i = 0; i < weathers.Count;i++)
            {
                result += weathers[i].temperature;
            }
            return Math.Round(result / weathers.Count, 3);
        }

        private double AveragePres(List<Weather> weathers)
        {
            if (weathers == null)
            {
                return 0;
            }
            double result = 0;
            for (int i = 0; i < weathers.Count; i++)
            {
                result += weathers[i].pressure;
            }
            return Math.Round(result / weathers.Count, 3);
        }
    }
}
