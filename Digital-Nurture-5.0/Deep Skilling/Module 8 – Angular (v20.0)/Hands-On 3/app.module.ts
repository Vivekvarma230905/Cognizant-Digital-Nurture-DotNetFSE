import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { CourseListComponent } from '../../course-list.component';
import { CourseCardComponent } from '../../course-card.component';
import { HighlightDirective } from '../../highlight.directive';
import { CreditLabelPipe } from '../../credit-label.pipe';

@NgModule({
  declarations: [
    AppComponent,
    CourseListComponent,
    CourseCardComponent,
    HighlightDirective,
    CreditLabelPipe
  ],
  imports: [BrowserModule],
  bootstrap: [AppComponent]
})
export class AppModule {}
