class LikeButton extends React.Component {
    constructor(props) {
      super(props);
      this.state = { liked: false };
      this.changeState = this.changeState.bind(this);
    }
    changeState(){
      this.setState({ liked: true })
    }

    render() {
      const isLiked = this.state.liked;
      return (<div>
      <button onClick={this.changeState}>
        Like
      </button>
      {isLiked==true && 
      <span>You like it</span>
      }
      </div>);
    }
  }