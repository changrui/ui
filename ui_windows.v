// Copyright (c) 2020 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by a GPL license
// that can be found in the LICENSE file.
module ui

fn C.MessageBox(h voidptr, text charptr, caption charptr, kind u32) int

// Add message box `title`.
pub fn message_box(tile, msg string) {
	title := ''
	C.MessageBox(0, msg.str, title.str, C.MB_OK)
}

