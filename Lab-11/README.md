# 📊 Lab 11: Data Visualization with Matplotlib

Welcome! This lab is a hands-on introduction to turning small tables of numbers into pictures. You will use **Python**, **Pandas**, and **Matplotlib** to explore salary, department, and age data.

## 🧭 Your tour

```mermaid
flowchart LR
    A[🧮 Make data] --> B[📈 Line plot]
    B --> C[📊 Explore salary]
    C --> D[🥧 Count departments]
    D --> E[🔎 Compare age & salary]
```

| In the notebook | What it helps you see |
|---|---|
| 📈 **Line plot** | How values change from one point to the next |
| 🪜 **Histogram** | How often values fall into different ranges |
| 📦 **Box plot** | The middle, spread, and possible unusual values |
| 🥧 **Pie chart** | How categories make up a whole |
| 🔎 **Scatter plot** | Whether two measurements may be related |

## 🚀 Open and run it

1. Open [`mathplot_lib.ipynb`](mathplot_lib.ipynb) in **VS Code** with the Jupyter extension, or open it in Jupyter Notebook.
2. Choose a Python environment with these packages installed:

   ```bash
   python -m pip install matplotlib pandas jupyter
   ```

3. Run the code cells **from top to bottom**. A cell is one small step; its chart or result appears below it.
4. Change a value or color, run that cell again, and see what changes. That is a great way to learn!

## 👀 What you will see

### 1. Start with a line

The first chart connects three points. `x` provides the horizontal positions, and `y` provides their heights. Later, a line chart shows the salary and age values in the sample data.

### 2. Look at salary in different ways

The notebook puts 20 sample salaries into a Pandas table called `df`.

- 📈 The **line plot** shows each salary in sequence.
- 🪜 The **histogram** groups salaries into five ranges. Taller bars mean more salaries landed in that range.
- 📦 The **box plot** gives a compact view of the salary spread and center.

### 3. Compare departments

The department column contains **HR**, **IT**, and **Finance**. `value_counts()` counts how many entries belong to each department, and the pie charts show those counts. Later versions add percentage labels and pull slices apart to make them easier to distinguish.

### 4. Compare age and salary

The last examples plot ages as a line and use a **scatter plot** to place age beside salary. Each dot represents one row of the sample data.

## 🧩 Tiny glossary

- **DataFrame (`df`)**: a table with rows and named columns, like a small spreadsheet.
- **Column**: one kind of information, such as `Salary` or `Age`.
- **Plot / chart**: a picture made from data.
- **`plt.show()`**: asks Matplotlib to display the chart.

## 🛠️ If something goes wrong

- **The histogram does not appear:** its cell currently says `plt.show` without calling it. Change it to `plt.show()` and run the cell again.
- **An error appears when adding `dept`:** the notebook adds a 21st salary row with `df.loc[20] = 0`, but the department list has only 20 values. If that extra row was not intended, remove that row-adding line and rerun the cells from the start. Otherwise, add a department value for the extra row.
- **A chart or variable is missing:** run the earlier cells first. Notebooks keep variables in memory while cells run, so order matters.

## 🌱 Try your own experiments

- Change the line color or marker in a plot.
- Try a different number of histogram bins.
- Add a title with `plt.title("My chart")` and axis labels with `plt.xlabel("...")` and `plt.ylabel("...")`.
- Change a sample value and rerun the chart to see how the picture responds.

Have fun exploring the data! 🎨