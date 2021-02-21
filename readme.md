# Autosize Stackview Demo

## Setup

`UIStackView` is designed to grow its size according to the content. In order for that to work, you need to set up the appropriate constraints between the `UIStackView` and the `UITableViewCell`. For example, this is how the constraints look like in interface builder: 

[![enter image description here][1]][1]
[![enter image description here][2]][2]


If you like setting up constraints in code, that should work too. Just have to add the constraints to the four sides: leading, trailing, top and bottom.

## Result

To demonstrate the result, I have this as the `cellForRowAt` function. Basically, it puts a number of `UILabel` inside the `stackView` and the label count is depending on the row number (i.e. one label in the 1st row, two labels in the 2nd row, and etc.). 

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath) as! TableviewCell
        for i in 1...indexPath.row + 1 {
            let label = UILabel()
            label.text = "Row \(indexPath.row), Label \(i)"
            cell.stackView.addArrangedSubview(label)
        }
        return cell
    }

Here is the final result:

<img src="https://i.stack.imgur.com/04vVT.png" width="250"/>


  [1]: https://i.stack.imgur.com/XtE3t.png
  [2]: https://i.stack.imgur.com/9rzzJ.png
  [3]: https://i.stack.imgur.com/04vVT.png
