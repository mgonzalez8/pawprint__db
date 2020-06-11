import { TestBed } from '@angular/core/testing';

import { PawprintsService } from './pawprints.service';

describe('PawprintsService', () => {
  let service: PawprintsService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PawprintsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
