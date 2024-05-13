import '@crowdstrike/glide-core-components/accordion.js';
import '@crowdstrike/glide-core-components/button-group.button.js';
import '@crowdstrike/glide-core-components/button-group.js';
import '@crowdstrike/glide-core-components/button.js';
import '@crowdstrike/glide-core-components/drawer.js';
import '@crowdstrike/glide-core-components/menu.button.js';
import '@crowdstrike/glide-core-components/menu.js';
import '@crowdstrike/glide-core-components/status-indicator.js';
import '@crowdstrike/glide-core-components/tab.group.js';
import '@crowdstrike/glide-core-components/tab.js';
import '@crowdstrike/glide-core-components/tab.panel.js';
import '@crowdstrike/glide-core-components/tag.js';
import '@crowdstrike/glide-core-components/textarea.js';
import '@crowdstrike/glide-core-components/toggle.js';

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
      <div class="main-container">
        <cs-button {{on "click" this.toggleDrawer}}>Toggle Drawer</cs-button>

        <cs-menu>
          <cs-menu-button label="One"></cs-menu-button>
          <cs-menu-button label="Two"></cs-menu-button>
          <cs-menu-button label="Three"></cs-menu-button>

          <cs-button slot="target" variant="secondary">Menu</cs-button>
        </cs-menu>

        <cs-button-group label="Button Group" orientation="horizontal">
          <cs-button-group-button value="button-1">Button 1</cs-button-group-button>
          <cs-button-group-button value="button-2">Button 2</cs-button-group-button>
          <cs-button-group-button value="button-3">Button 3</cs-button-group-button>
        </cs-button-group>
      </div>

      <cs-drawer style="color: black;">
        <div class="drawer-container">
          Drawer content
          <cs-accordion label="Accordion">Inner Content</cs-accordion>

          <cs-toggle label="Toggle" summary="Example">
            <div slot="description">Help text</div>
            <div slot="tooltip">Tooltip content</div>
          </cs-toggle>

          <cs-textarea label="Textarea" name="textarea">
            <div slot="description">Help text</div>
          </cs-textarea>

          <cs-status-indicator variant="idle"></cs-status-indicator>

          <cs-tab-group variant="secondary">
            <cs-tab slot="nav" panel="1">Tab1</cs-tab>
            <cs-tab slot="nav" panel="2">Tab2</cs-tab>
            <cs-tab slot="nav" panel="3">Tab3</cs-tab>

            <cs-tab-panel name="1">
              <cs-tag>Tag1</cs-tag>
              <cs-tag>Tag2</cs-tag>
            </cs-tab-panel>
            <cs-tab-panel name="2">Panel 2</cs-tab-panel>
            <cs-tab-panel name="3">Panel 3</cs-tab-panel>
          </cs-tab-group>
        </div>
      </cs-drawer>

    </main>
  </template>
}
