import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { EducationComponent } from "../education/education.component";

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterModule, EducationComponent],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

}
