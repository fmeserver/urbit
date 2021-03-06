import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export class NotebookItem extends Component {
  render() {
    const { props } = this;

    const selectedClass = (props.selected) ? 'bg-gray5 bg-gray1-d c-default' : 'pointer hover-bg-gray5 hover-bg-gray1-d';

    const unread = (props.unreadCount > 0)
      ? <p className="dib f9 fr"><span className="dib white bg-gray3 bg-gray2-d fw6 br1" style={{ padding: '1px 5px' }}>
        {props.unreadCount}
      </span></p> : <span />;

    return (
      <Link
      to={'/~publish/notebook/' + props.path}
      >
        <div className={'w-100 v-mid f9 ph5 pv1 ' + selectedClass}>
          <p className="dib f9">{props.title}</p>
          {unread}
        </div>
      </Link>
    );
  }
}

export default NotebookItem;
