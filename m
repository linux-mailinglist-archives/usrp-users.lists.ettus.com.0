Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE7643FEAD
	for <lists+usrp-users@lfdr.de>; Fri, 29 Oct 2021 16:47:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FB45384A76
	for <lists+usrp-users@lfdr.de>; Fri, 29 Oct 2021 10:47:32 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 444A9384708
	for <usrp-users@lists.ettus.com>; Fri, 29 Oct 2021 10:46:43 -0400 (EDT)
Date: Fri, 29 Oct 2021 14:46:43 +0000
To: usrp-users@lists.ettus.com
From: christopher_beaudoin@uml.edu
Message-ID: <8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 77E5FSWKWDJWCJEXDPRVWOJUROP36RPT
X-Message-ID-Hash: 77E5FSWKWDJWCJEXDPRVWOJUROP36RPT
X-MailFrom: christopher_beaudoin@uml.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timing of GPIO Readback
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77E5FSWKWDJWCJEXDPRVWOJUROP36RPT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6630057490270160550=="

This is a multi-part message in MIME format.

--===============6630057490270160550==
Content-Type: multipart/alternative;
 boundary="b1_8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw
Content-Type: text/plain; charset=us-ascii

Hi Folks,

        I'm working on a project that needs an asynchronous time tag event to flag a time instant to apply specific processing to the RF samples from a B210. The GPIO seems like the obvious resource to provide the time alignment between my external event and the RF samples. But I've never used the GPIO and the GPIO C++ example code leaves me with some timing related questions. 

Specifically, in that code it appears GPIO Readback is timed by when the host controller asks for the state of the pin. With my external timing signal, I'm looking for a change of state over a period as short as 10us. So if I were to poll the state of that signal in the while loop reading the receive samples, there is a good chance that the state change would be missed. I suppose if I make the sample rate high enough and the frame size small enough, I could guarantee capturing the state transition within my timing constraints. But this seems less than ideal, particularly because of how sensitive the b210 data buffering is to packet size and processing load. Maybe the way the UHD driver supports GPIO makes it incompatible with my application. But before I try to engineer a different solution, I'm hoping someone with a clearer understanding of the GPIO implementation could tell me whether or not this is the case.

Thanks,

Chris

--b1_8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Folks,</p><p>        I'm working on a project that needs an asynchron=
ous time tag event to flag a time instant to apply specific processing to t=
he RF samples from a B210. The GPIO seems like the obvious resource to prov=
ide the time alignment between my external event and the RF samples. But I'=
ve never used the GPIO and the GPIO C++ example code leaves me with some ti=
ming related questions. </p><p>Specifically, in that code it appears GPIO R=
eadback is timed by when the host controller asks for the state of the pin.=
 With my external timing signal, I'm looking for a change of state over a p=
eriod as short as 10us. So if I were to poll the state of that signal in th=
e while loop reading the receive samples, there is a good chance that the s=
tate change would be missed. I suppose if I make the sample rate high enoug=
h and the frame size small enough, I could guarantee capturing the state tr=
ansition within my timing constraints. But this seems less than ideal, part=
icularly because of how sensitive the b210 data buffering is to packet size=
 and processing load. Maybe the way the UHD driver supports GPIO makes it i=
ncompatible with my application. But before I try to engineer a different s=
olution, I'm hoping someone with a clearer understanding of the GPIO implem=
entation could tell me whether or not this is the case.</p><p><br></p><p>Th=
anks,</p><p>Chris</p>

--b1_8WwKufvkzUaamqFX4HaSOlTk97ZnJTMv5Yq7kFPnyrw--

--===============6630057490270160550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6630057490270160550==--
