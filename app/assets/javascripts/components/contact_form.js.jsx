var ContactForm = React.createClass({
  getInitialState: function() {
    return {
      name: '',
      email: '',
      phone: '',
      message: ''
    };
  },

  handleChange: function(e){
    this.setState({name: e.target.value});
  },

  handleSubmit: function(e) {
    this.setState({name: ''});
  },

  propTypes: {
    name: React.PropTypes.string,
    email: React.PropTypes.string,
    phone: React.PropTypes.string,
    message: React.PropTypes.node
  },

  render: function() {
    return (
      <form>
        <div className="form-group">
          <input name="name"
            type="text"
            id="name"
            className="form-control text-field"
            placeholder="Name" />
        </div>
        <div className="form-group">
          <input name="email"
            type="text"
            id="email"
            className="form-control text-field"
            placeholder="Email" />
        </div>
        <div className="form-group">
          <input name="phone"
            type="text"
            id="phone"
            className="form-control text-field"
            placeholder="Phone" />
        </div>
        <div className="form-group">
          <textarea name="message"
            type="text"
            id="message"
            className="form-control text-area"
            placeholder="Message" />
        </div>
        <div className="form-group">
          <button type="submit" className="submit form-control">
            Submit
          </button>
        </div>
      </form>
    );
  }
});
