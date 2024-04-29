import '@crowdstrike/glide-core-components/accordion.js';
import '@crowdstrike/glide-core-components/button.js';
import '@crowdstrike/glide-core-components/drawer.js';
import '@crowdstrike/glide-core-components/menu.js';
import '@crowdstrike/glide-core-components/menu.button.js';

import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import { action } from '@ember/object';

export default class Welcome extends Component {
  @tracked isDrawerOpen = false;

  @action
  toggleDrawer() {
    const drawer = document.querySelector('cs-drawer');

    if (this.isDrawerOpen) {
      drawer?.close();
      this.isDrawerOpen = false;

      return;
    }

    this.isDrawerOpen = true;
    drawer?.open();
  }

  <template>
    <main>
      <div class="title">
        <cs-button {{on "click" this.toggleDrawer}}>Toggle Drawer</cs-button>

        <cs-menu>
          <cs-menu-button label="One"></cs-menu-button>
          <cs-menu-button label="Two"></cs-menu-button>
          <cs-menu-button label="Three"></cs-menu-button>

          <cs-button slot="target" variant="secondary">Menu</cs-button>
        </cs-menu>
      </div>

      <cs-drawer style="color: black;">
        <div style="padding: 1rem;">
          Drawer content
          <cs-accordion label="Accordion">Inner Content</cs-accordion>
        </div>
      </cs-drawer>

    </main>
  </template>
}
