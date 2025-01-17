import { Routes } from '@angular/router';
import { HomeComponent } from '../home/home.component';
import { ContactComponent } from '../contact/contact.component';
import { ProjectsComponent } from '../projects/projects.component';

export const routes: Routes = [
    {path:"",component:HomeComponent},
    {path:"Home",component:HomeComponent},
    {path:"Contact",component:ContactComponent},
    {path:"Projects",component:ProjectsComponent},
    {path:"***",component:HomeComponent}
];
