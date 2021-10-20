using System;
using System.Collections.Generic;
using System.Text;

namespace Stanz.Processing.Business.Helper
{
    public class General
    {
        /// <summary>
        /// Returns the Year Range from and Including The Start and Stop Years.
        /// If Stop Year is null then returns year range from Startyear to current year
        /// </summary>
        /// <param name="startYear"></param>
        /// <param name="stopYear"></param>
        /// <returns></returns>
        public static IEnumerable<int> GetYearsInRange(int startYear, int? stopYear = null)
        {
            if (!stopYear.HasValue)
                stopYear = DateTime.Today.Year;

            var years = new List<int>();
            while (startYear <= stopYear)
            {
                years.Add(startYear++);
            }
            return years;
        }
    }
}
