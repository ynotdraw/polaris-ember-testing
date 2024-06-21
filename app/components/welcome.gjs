import '@crowdstrike/glide-core/accordion.js';
import '@crowdstrike/glide-core/button-group.button.js';
import '@crowdstrike/glide-core/button-group.js';
import '@crowdstrike/glide-core/button.js';
import '@crowdstrike/glide-core/drawer.js';
import '@crowdstrike/glide-core/dropdown.js';
import '@crowdstrike/glide-core/dropdown.option.js';
import '@crowdstrike/glide-core/menu.button.js';
import '@crowdstrike/glide-core/menu.js';
import '@crowdstrike/glide-core/status-indicator.js';
import '@crowdstrike/glide-core/tab.group.js';
import '@crowdstrike/glide-core/tab.js';
import '@crowdstrike/glide-core/tab.panel.js';
import '@crowdstrike/glide-core/tag.js';
import '@crowdstrike/glide-core/textarea.js';
import '@crowdstrike/glide-core/toggle.js';
import '@crowdstrike/glide-core/tooltip.js';

import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import { action } from '@ember/object';

export default class Welcome extends Component {
  @tracked isDrawerOpen = false;

  @action
  toggleDrawer() {
    const drawer = document.querySelector('glide-core-drawer');

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
        <glide-core-button {{on "click" this.toggleDrawer}}>Toggle Drawer</glide-core-button>

        <glide-core-menu>
          <glide-core-menu-button label="One"></glide-core-menu-button>
          <glide-core-menu-button label="Two"></glide-core-menu-button>
          <glide-core-menu-button label="Three"></glide-core-menu-button>

          <glide-core-button slot="target" variant="secondary">Menu</glide-core-button>
        </glide-core-menu>
      </div>

      <glide-core-drawer style="color: black;">
        <div class="drawer-container">
          Drawer content
          <glide-core-accordion label="Accordion">Inner Content</glide-core-accordion>

          <glide-core-toggle label="Toggle" summary="Example">
            <div slot="description">Help text</div>
            <div slot="tooltip">Tooltip content</div>
          </glide-core-toggle>

          <glide-core-dropdown
            label="Label"
            name="name"
            orientation="horizontal"
            placeholder="Placeholder"
            size="large"
            multiple
          >
            <glide-core-dropdown-option label="One" value="one"></glide-core-dropdown-option>

            <glide-core-dropdown-option label="Two" value="two"></glide-core-dropdown-option>

            <glide-core-dropdown-option label="Three" value="three"></glide-core-dropdown-option>

            <glide-core-dropdown-option label="Four" value="four"></glide-core-dropdown-option>

            <glide-core-dropdown-option label="Five" value="five"></glide-core-dropdown-option>

            <div slot="description">Description</div>

          </glide-core-dropdown>

          <glide-core-button-group label="Button Group" orientation="horizontal">
            <glide-core-button-group-button value="button-1">Button 1</glide-core-button-group-button>
            <glide-core-button-group-button value="button-2">Button 2</glide-core-button-group-button>
            <glide-core-button-group-button value="button-3">Button 3</glide-core-button-group-button>
          </glide-core-button-group>

          <glide-core-textarea label="Textarea" name="textarea">
            <div slot="description">Help text</div>
          </glide-core-textarea>

          <glide-core-status-indicator variant="idle"></glide-core-status-indicator>

          <glide-core-tab-group variant="secondary">
            <glide-core-tab slot="nav" panel="1">Tab1</glide-core-tab>
            <glide-core-tab slot="nav" panel="2">Tab2</glide-core-tab>
            <glide-core-tab slot="nav" panel="3">Tab3</glide-core-tab>

            <glide-core-tab-panel name="1">
              <glide-core-tag>Tag1</glide-core-tag>
              <glide-core-tag>Tag2</glide-core-tag>
              <glide-core-tooltip>
                Example Tooltip
                <glide-core-button slot="target">Tooltip</glide-core-button>
              </glide-core-tooltip>
            </glide-core-tab-panel>
            <glide-core-tab-panel name="2">Panel 2</glide-core-tab-panel>
            <glide-core-tab-panel name="3">Panel 3</glide-core-tab-panel>
          </glide-core-tab-group>
        </div>
      </glide-core-drawer>

    </main>
  </template>
}
