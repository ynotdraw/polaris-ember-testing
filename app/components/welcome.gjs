import '@crowdstrike/glide-core-components/button.js';

import Component from '@glimmer/component';
import { on } from '@ember/modifier';
import { action } from '@ember/object';

export default class Welcome extends Component {
  @action
  onClick() {
    window.alert('clicked!');
  }

  <template>
    <main>
      <div class="title">
        <cs-button {{on "click" this.onClick}}>Button</cs-button>
      </div>
    </main>
  </template>
}
