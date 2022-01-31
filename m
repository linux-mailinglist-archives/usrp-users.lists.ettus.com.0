Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4B34A4AD8
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 16:45:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04CC93849BA
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 10:45:02 -0500 (EST)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 134DF384909
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 10:44:01 -0500 (EST)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 80AC641CA6
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 17:43:15 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 6F7579FFB2
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 17:43:05 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LtfPWimkzd4M for <usrp-users@lists.ettus.com>;
	Mon, 31 Jan 2022 17:43:03 +0200 (IST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by o.dtnt.email (Postfix) with ESMTPSA id 2C1649FF71
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 17:43:02 +0200 (IST)
Received: by mail-wr1-f53.google.com with SMTP id e8so26300056wrc.0
        for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 07:43:02 -0800 (PST)
X-Gm-Message-State: AOAM5338PZDTR+VckXyftavfVRpD9YH9WjvQ/DwtFNmE6qQGWVwq9mYG
	GYzenwlRZFBtX7LRsb5T4bsDw4+tzUDlx8ntKsU=
X-Google-Smtp-Source: ABdhPJyRgYuXyE5tsn7lZLHfTbPn9X5P2/KgafrOeAAGdLgC2i/i30Odto3OLs1SqqCwkUsyEN8BpEc/X+3QTdJssHw=
X-Received: by 2002:a5d:598b:: with SMTP id n11mr18098948wri.702.1643643782012;
 Mon, 31 Jan 2022 07:43:02 -0800 (PST)
MIME-Version: 1.0
From: Ofer Saferman <ofer@navigicom.com>
Date: Mon, 31 Jan 2022 17:42:50 +0200
X-Gmail-Original-Message-ID: <CACDReSxXHfLjdsfBj9=oFXhOy5c-CTHY7+NaqRrCy6KpsVZtXw@mail.gmail.com>
Message-ID: <CACDReSxXHfLjdsfBj9=oFXhOy5c-CTHY7+NaqRrCy6KpsVZtXw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 80AC641CA6.A45D8
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: EJFX3DWPKMWBG3Q457FNEDFIAJGO5OTR
X-Message-ID-Hash: EJFX3DWPKMWBG3Q457FNEDFIAJGO5OTR
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Questions about replay block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJFX3DWPKMWBG3Q457FNEDFIAJGO5OTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2900618492516129828=="

--===============2900618492516129828==
Content-Type: multipart/alternative; boundary="000000000000c3a52005d6e2a3c8"

--000000000000c3a52005d6e2a3c8
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working on a E320 USRP unit and using UHD-4.1.0.5.
I prepared my own FPGA image that has 1 radio block and 1 replay block with
2 ports (channels)
I would like to be able to simultaneously perform playback of 1 Tx channel
and recording of 2 Rx channels (to/from different memory locations)
The example rfnoc_replay_samples_from_file.cpp is only helpful to some
extent because it shows only the playback path and I am having some
difficulty setting up the recording path.

I have a few questions about the replay block functionality and
connectivity that I hope you may be able to resolve.

1. Is the replay block bi-directional? If I have a replay block with 1
channel, can it be used for both playback of samples and recording of
samples (from/to different memory locations) simultaneously ? or does each
operation require one channel?
2. If the answer to question (1) is no then I guess I need at least 3
replay channels. Is it possible to define in the FPGA image (in the yml
file) a replay block with 3 channels (ports) or does it have to be a power
of 2? a multiple of 2? I didn't want to try and see what happens because it
takes a while to compile the FPGA image and I would rather get it right on
the 1st try.
3. I would like to issue samples recording at a predetermined time for a
fixed size data chunk and then at my own leisure dump the memory buffer
that was recorded to a file. Since I don't have a working example I am
having some difficulty getting it right.
a. The graph should be Radio -->  Replay --> rx_stream. Is this correct?
b. I should start my recording with replay_ctrl->record_restart and check
for fullness, right?
c. Then how do I get the rx_stream to dump it to file? Do I need to do
playback for this to happen, mirroring what is going on in the
rfnoc_replay_samples_from_file example?
If someone has a working code snippet I would appreciate it if they can
share it.

Thanks,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000c3a52005d6e2a3c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am working on a E32=
0 USRP unit and using UHD-4.1.0.5.<br></div><div>I prepared my own FPGA ima=
ge that has 1 radio block and 1 replay block with 2 ports (channels)</div><=
div>I would like to be able to simultaneously perform playback of 1 Tx chan=
nel and recording of 2 Rx channels (to/from different memory locations)</di=
v><div>The example rfnoc_replay_samples_from_file.cpp is only helpful to so=
me extent because it shows only the playback path and I am having some diff=
iculty setting up the recording path.<br></div><div></div><div><br></div><d=
iv>I have a few questions about the replay block functionality and connecti=
vity that I hope you may be able to resolve.</div><div><br></div><div>1. Is=
 the replay block bi-directional? If I have a replay block with 1 channel, =
can it be used for both playback of samples and recording of samples (from/=
to different memory locations) simultaneously ? or does each operation requ=
ire one channel?</div><div>2. If the answer to question (1) is no then I gu=
ess I need at least 3 replay channels. Is it possible to define in the FPGA=
 image (in the yml file) a replay block with 3 channels (ports) or does it =
have to be a power of 2? a multiple of 2? I didn&#39;t want to try and see =
what happens because it takes a while to compile the FPGA image and I would=
 rather get it right on the 1st try.</div><div>3. I would like to issue sam=
ples recording at a predetermined time for a fixed size data chunk and then=
 at my own leisure dump the memory buffer that was recorded to a file. Sinc=
e I don&#39;t have a working example I am having some difficulty getting it=
 right. <br></div><div>a. The graph should be Radio --&gt;=C2=A0 Replay --&=
gt; rx_stream. Is this correct? <br></div><div>b. I should start my recordi=
ng with replay_ctrl-&gt;record_restart and check for fullness, right?</div>=
<div>c. Then how do I get the rx_stream to dump it to file? Do I need to do=
 playback for this to happen, mirroring what is going on in the=20
rfnoc_replay_samples_from_file example? <br></div><div>If someone has a wor=
king code snippet I would appreciate it if they can share it.</div><div><br=
></div><div>Thanks,</div><div>Ofer Saferman<br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000c3a52005d6e2a3c8--

--===============2900618492516129828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2900618492516129828==--
