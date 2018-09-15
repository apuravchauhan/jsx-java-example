<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <title>Apurav Chauhan</title>
  
</head>

<body>
  <div id="root">
   <div>
    <button onClick="{this.changeState}">
      Like
    </button>
    <#if isLiked==true><span>You like it</span></#if>
   </div>
  </div>
  <script type="text/babel" id="buttoncomponent">
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
          return <div>
          <button onClick={this.changeState}>
            Like
          </button>
          {isLiked==true && 
          <span>You like it</span>
          }
          </div>
        }
      }
      </script>
      <script type="text/babel">
      ReactDOM.render(
        <LikeButton/>,
        document.getElementById('root')
      );
    </script>
    <script src="https://unpkg.com/react@16/umd/react.production.min.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
</body>
</html>