import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0, num1: "", num2: ""}

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.addition = this.addition.bind(this);
    this.subtraction = this.subtraction.bind(this);
    this.multiplication = this.multiplication.bind(this);
    this.division = this.division.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    this.setState({ num1: parseInt(e.currentTarget.value)})
  }

  setNum2(e) {
    this.setState({num2: parseInt(e.currentTarget.value)})
  }

  addition(e) {
    e.preventDefault;
    const result = this.state.num1 + this.state.num2
    this.setState({result: result});
  }

  subtraction(e) {
    e.preventDefault;
    const result = this.state.num1 - this.state.num2
    this.setState({ result: result });
  }

  multiplication(e) {
    e.preventDefault;
    const result = this.state.num1 * this.state.num2
    this.setState({ result: result });
  }

  division(e) {
    e.preventDefault;
    const result = this.state.num1 / this.state.num2
    this.setState({ result: result });
  }

  clear(e) {
    e.preventDefault;
    this.setState({result: 0, num1: "", num2: ""});
  }

  render(){
    return (
      <div>
        <h1>Hello World</h1>
        <h1>{this.state.result}</h1>
        <input type="text" id="num-1" onChange={this.setNum1} value={this.state.num1}/>
        <input type="text" id="num-2" onChange={this.setNum2} value={this.state.num2}/>
        <br/>
        <button onClick={this.addition}>+</button>
        <button onClick={this.subtraction}>-</button>
        <button onClick={this.multiplication}>*</button>
        <button onClick={this.division}>/</button>
        <br/>
        <button onClick={this.clear}>Clear</button>
      </div>
    );
  }
}

export default Calculator;
