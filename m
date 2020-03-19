Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B4F18C137
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 21:21:11 +0100 (CET)
Received: from [::1] (port=57504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF1fA-00057X-SK; Thu, 19 Mar 2020 16:21:08 -0400
Received: from mout.gmx.net ([212.227.17.20]:54239)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jF1f6-0004wG-94
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 16:21:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584649223;
 bh=NeIlozivWLvpk5A8kiVDM6/JoBAkzfEvyp+U6y+svGk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=lCTJ+v0kaIrFWB/shfJGZYxWBKsXcQRMXJqLytmes06cwvU8aZ2WG4g1zQNUBD16O
 6J9W9u2TVD6UE3PM6OsxCTNmeEYt/VxuZFrVzfM8ST1LkZBo6UBydXmcUJwWR7GlWe
 0Zky5h3eLYIYI0bPtWuw+I5LZA7VWOP8sZ+a+i14=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bap79.server.lan [172.19.172.137]) (via HTTP); Thu, 19 Mar 2020
 21:20:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-bbe82f54-edda-4533-b4c8-9b1bde054edc-1584649222876@3c-app-gmx-bap79>
To: "Rob Kossler" <rkossler@nd.edu>
Date: Thu, 19 Mar 2020 21:20:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
 <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
 <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
 <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:mT2QkozDSTT/VKB7h8h0Ne4i8QzFj7l6tyM+PEEgdCHxUSKM5XPvOagjBzvakkFpecJ3i
 IuW09KrJ/NILn2it/RdVh2NnRpEatQ8aWbaLsMYEM3g9CS1hLemxNAHmiZY6qteQ74aZvLD7ae1k
 OHQ48t6D0rVa74+EboQBv+zvC/F7KPBmhAzvNT3rIQqjeXu9iJI8LtQUe+qYCdKMp0oCemSORz3n
 sarasF4CSR0d51kWt4dkVq4yYWWDPbOGzzPB02RHfZoZM99DcQdYmaAOV6aDjgbKmdQc6ksP0YRV
 H8=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YCA+DEWqkVU=:XtZHMjEpwwG6RmTo8nuPzv
 Ss+B55uQEESG+zRWbW/J1Og8oheMsQQEmksBCZfRZwostIzcH38FWVhVcfJbJCgFCVNJWSP+P
 Jirq8NYvO6d1HUZ1uyftHOikrLax7u2/xtKNGo9aLVzjBGxfkhofct1uaMjUoupxptqFPMa1S
 ivCa9rskGsd+Q4YkJk4MYffp6T5G7ZTiN1DankIPY7khoOcefnbnex7HPPJCCV56wqkMfbXuG
 f+sY/hq+n10ycDD4m653Bz/ApcxZPlfl8h6X6uQxhpA1N7CekfN6FWA+lhyxWiVExfDb7Soo0
 BEyeg54OklRTOq4ptx/jYKC3jrL5fKOMTpMVNKHBM0btRihhhuqRBs/dCAnCaKBJTJoeTM+ia
 /iPsWaIccZA993UEzfEG6KYgZaLVYj9JekVKlVidyLFDZp3IbFK+0AeDTrtol3ZGe5nhtD9s7
 tTYwwJLxk9Sar6sebkDpnilGMBCWhtPLig40FkLuRaZEry+oH+mRaitdHvhBMCSTfjzOzSa+6
 /6+diKzrdsdKMpgze+Y+G4J3dCP7kgi3krYlufLJCqz4+jsDxUaQcbngH9n4ECGqWYjnh/FNe
 Py1AdceQj1+AqTqX/rDRiKeLZK0SrAXamM51d0q9rMIy5f3Z1PNYviW11tUUUAPokII9CWUjg
 70tkwAdKNOYJ0dyu5b2rD9kRO5qhVHAxdZtIH86t8ZR3C5fYiLECrZ1cfmmGnSIOramM=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3299488183834432240=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3299488183834432240==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: Verdana;font-size: 12=
=2E0px;"><div>Hi Rob,</div>

<div>&nbsp;</div>

<div>Yes, I confirm your conclusion=2E</div>

<div>&nbsp;</div>

<ul>
	<li>I calculate the relative phase by dividing the outputs of both receiv=
ers=2E To understand better, note that I have an additional &quot;IF stage&=
quot; in my own signal flow such that I exclude DC offset correction etc=2E=
 the USRP may perform=2E This is the block diagram of the transmitter part:=
 https://snipboard=2Eio/YFgIKs=2Ejpg =2E I send &quot;exp(1j*1MHz*t) =2E Th=
is shows the receiver part: https://snipboard=2Eio/i9jLJg=2Ejpg =2E I multi=
ply the received signal with exp(-1j*1MHz*t) and filter them=2E Then I divi=
de both streams and take the phase part=2E I take a moving average (for flu=
catuations), add pi and display the number=2E</li>
	<li><span style=3D"border-block: unset; border-inline: unset; border-star=
t-start-radius: unset; border-start-end-radius: unset; border-end-start-rad=
ius: unset; border-end-end-radius: unset; overflow-inline: unset; overflow-=
block: unset; overscroll-behavior-inline: unset; overscroll-behavior-block:=
 unset; margin-block: unset; margin-inline: unset; scroll-margin-block: uns=
et; scroll-margin-inline: unset; padding-block: unset; padding-inline: unse=
t; scroll-padding-block: unset; scroll-padding-inline: unset; inset-block: =
unset; inset-inline: unset; block-size: unset; min-block-size: unset; max-b=
lock-size: unset; inline-size: unset; min-inline-size: unset; max-inline-si=
ze: unset; background: unset; background-blend-mode: unset; border: unset; =
border-radius: unset; box-decoration-break: unset; -moz-float-edge: unset; =
display: unset; position: fixed; float: unset; clear: unset; vertical-align=
: unset; overflow: unset; overflow-anchor: unset; transition: unset; animat=
ion: unset; transform: unset; rotate: unset; scale: unset; translate: unset=
; offset: unset; scroll-behavior: unset; scroll-snap-align: unset; scroll-s=
nap-type: unset; overscroll-behavior: unset; isolation: unset; break-after:=
 unset; break-before: unset; break-inside: unset; resize: unset; perspectiv=
e: unset; perspective-origin: unset; backface-visibility: unset; transform-=
box: unset; transform-style: unset; transform-origin: unset; contain: unset=
; -moz-appearance: unset; -moz-orient: unset; will-change: unset; shape-ima=
ge-threshold: unset; shape-margin: unset; shape-outside: unset; touch-actio=
n: unset; -webkit-line-clamp: unset; columns: unset; column-fill: unset; co=
lumn-rule: unset; column-span: unset; content: unset; counter-increment: un=
set; counter-reset: unset; counter-set: unset; opacity: unset; box-shadow: =
unset; clip: rect(0px, 0px, 0px, 0px); filter: unset; mix-blend-mode: unset=
; font: unset; font-synthesis: unset; visibility: unset; writing-mode: unse=
t; text-orientation: unset; color-adjust: unset; image-rendering: unset; im=
age-orientation: unset; dominant-baseline: unset; text-anchor: unset; color=
-interpolation: unset; color-interpolation-filters: unset; fill: unset; fil=
l-opacity: unset; fill-rule: unset; shape-rendering: unset; stroke: unset; =
stroke-width: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-=
miterlimit: unset; stroke-opacity: unset; stroke-dasharray: unset; stroke-d=
ashoffset: unset; clip-rule: unset; marker: unset; paint-order: unset; -moz=
-context-properties: unset; border-collapse: unset; empty-cells: unset; cap=
tion-side: unset; border-spacing: unset; color: unset; text-transform: unse=
t; hyphens: unset; -moz-text-size-adjust: unset; text-indent: unset; overfl=
ow-wrap: unset; word-break: unset; text-justify: unset; text-align-last: un=
set; text-align: unset; letter-spacing: unset; word-spacing: unset; white-s=
pace: pre; text-shadow: unset; text-emphasis: unset; text-emphasis-position=
: unset; -moz-tab-size: unset; line-break: unset; -webkit-text-fill-color: =
unset; -webkit-text-stroke: unset; ruby-align: unset; ruby-position: unset;=
 text-combine-upright: unset; text-rendering: unset; -moz-control-character=
-visibility: unset; text-underline-offset: unset; text-underline-position: =
unset; text-decoration-skip-ink: unset; cursor: unset; pointer-events: unse=
t; -moz-user-input: unset; -moz-user-modify: unset; -moz-user-focus: unset;=
 caret-color: unset; scrollbar-color: unset; list-style: unset; quotes: uns=
et; -moz-image-region: unset; margin: unset; scroll-margin: unset; outline:=
 unset; -moz-outline-radius: unset; outline-offset: unset; padding: unset; =
scroll-padding: unset; top: 0px; right: unset; bottom: unset; left: unset; =
z-index: unset; flex-flow: unset; place-content: unset; place-items: unset;=
 flex: unset; place-self: unset; order: unset; width: unset; min-width: uns=
et; max-width: unset; height: unset; min-height: unset; max-height: unset; =
box-sizing: unset; object-fit: unset; object-position: unset; grid-area: un=
set; grid: unset; gap: unset; vector-effect: unset; stop-color: unset; stop=
-opacity: unset; flood-color: unset; flood-opacity: unset; lighting-color: =
unset; mask-type: unset; clip-path: unset; mask: unset; x: unset; y: unset;=
 cx: unset; cy: unset; rx: unset; ry: unset; r: unset; table-layout: unset;=
 text-overflow: unset; text-decoration: unset; ime-mode: unset; scrollbar-w=
idth: unset; user-select: text; -moz-window-dragging: unset; -moz-force-bro=
ken-image-icon: unset; -moz-box-align: unset; -moz-box-direction: unset; -m=
oz-box-flex: unset; -moz-box-orient: unset; -moz-box-pack: unset; -moz-box-=
ordinal-group: unset;">https://snipboard=2Eio/YFgIKs=2Ejpg</span> <span sty=
le=3D"border-block: unset; border-inline: unset; border-start-start-radius:=
 unset; border-start-end-radius: unset; border-end-start-radius: unset; bor=
der-end-end-radius: unset; overflow-inline: unset; overflow-block: unset; o=
verscroll-behavior-inline: unset; overscroll-behavior-block: unset; margin-=
block: unset; margin-inline: unset; scroll-margin-block: unset; scroll-marg=
in-inline: unset; padding-block: unset; padding-inline: unset; scroll-paddi=
ng-block: unset; scroll-padding-inline: unset; inset-block: unset; inset-in=
line: unset; block-size: unset; min-block-size: unset; max-block-size: unse=
t; inline-size: unset; min-inline-size: unset; max-inline-size: unset; back=
ground: unset; background-blend-mode: unset; border: unset; border-radius: =
unset; box-decoration-break: unset; -moz-float-edge: unset; display: unset;=
 position: fixed; float: unset; clear: unset; vertical-align: unset; overfl=
ow: unset; overflow-anchor: unset; transition: unset; animation: unset; tra=
nsform: unset; rotate: unset; scale: unset; translate: unset; offset: unset=
; scroll-behavior: unset; scroll-snap-align: unset; scroll-snap-type: unset=
; overscroll-behavior: unset; isolation: unset; break-after: unset; break-b=
efore: unset; break-inside: unset; resize: unset; perspective: unset; persp=
ective-origin: unset; backface-visibility: unset; transform-box: unset; tra=
nsform-style: unset; transform-origin: unset; contain: unset; -moz-appearan=
ce: unset; -moz-orient: unset; will-change: unset; shape-image-threshold: u=
nset; shape-margin: unset; shape-outside: unset; touch-action: unset; -webk=
it-line-clamp: unset; columns: unset; column-fill: unset; column-rule: unse=
t; column-span: unset; content: unset; counter-increment: unset; counter-re=
set: unset; counter-set: unset; opacity: unset; box-shadow: unset; clip: re=
ct(0px, 0px, 0px, 0px); filter: unset; mix-blend-mode: unset; font: unset; =
font-synthesis: unset; visibility: unset; writing-mode: unset; text-orienta=
tion: unset; color-adjust: unset; image-rendering: unset; image-orientation=
: unset; dominant-baseline: unset; text-anchor: unset; color-interpolation:=
 unset; color-interpolation-filters: unset; fill: unset; fill-opacity: unse=
t; fill-rule: unset; shape-rendering: unset; stroke: unset; stroke-width: u=
nset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: uns=
et; stroke-opacity: unset; stroke-dasharray: unset; stroke-dashoffset: unse=
t; clip-rule: unset; marker: unset; paint-order: unset; -moz-context-proper=
ties: unset; border-collapse: unset; empty-cells: unset; caption-side: unse=
t; border-spacing: unset; color: unset; text-transform: unset; hyphens: uns=
et; -moz-text-size-adjust: unset; text-indent: unset; overflow-wrap: unset;=
 word-break: unset; text-justify: unset; text-align-last: unset; text-align=
: unset; letter-spacing: unset; word-spacing: unset; white-space: pre; text=
-shadow: unset; text-emphasis: unset; text-emphasis-position: unset; -moz-t=
ab-size: unset; line-break: unset; -webkit-text-fill-color: unset; -webkit-=
text-stroke: unset; ruby-align: unset; ruby-position: unset; text-combine-u=
pright: unset; text-rendering: unset; -moz-control-character-visibility: un=
set; text-underline-offset: unset; text-underline-position: unset; text-dec=
oration-skip-ink: unset; cursor: unset; pointer-events: unset; -moz-user-in=
put: unset; -moz-user-modify: unset; -moz-user-focus: unset; caret-color: u=
nset; scrollbar-color: unset; list-style: unset; quotes: unset; -moz-image-=
region: unset; margin: unset; scroll-margin: unset; outline: unset; -moz-ou=
tline-radius: unset; outline-offset: unset; padding: unset; scroll-padding:=
 unset; top: 0px; right: unset; bottom: unset; left: unset; z-index: unset;=
 flex-flow: unset; place-content: unset; place-items: unset; flex: unset; p=
lace-self: unset; order: unset; width: unset; min-width: unset; max-width: =
unset; height: unset; min-height: unset; max-height: unset; box-sizing: uns=
et; object-fit: unset; object-position: unset; grid-area: unset; grid: unse=
t; gap: unset; vector-effect: unset; stop-color: unset; stop-opacity: unset=
; flood-color: unset; flood-opacity: unset; lighting-color: unset; mask-typ=
e: unset; clip-path: unset; mask: unset; x: unset; y: unset; cx: unset; cy:=
 unset; rx: unset; ry: unset; r: unset; table-layout: unset; text-overflow:=
 unset; text-decoration: unset; ime-mode: unset; scrollbar-width: unset; us=
er-select: text; -moz-window-dragging: unset; -moz-force-broken-image-icon:=
 unset; -moz-box-align: unset; -moz-box-direction: unset; -moz-box-flex: un=
set; -moz-box-orient: unset; -moz-box-pack: unset; -moz-box-ordinal-group: =
unset;">https://snipboard=2Eio/YFgIKs=2Ejpg</span> <span style=3D"border-bl=
ock: unset; border-inline: unset; border-start-start-radius: unset; border-=
start-end-radius: unset; border-end-start-radius: unset; border-end-end-rad=
ius: unset; overflow-inline: unset; overflow-block: unset; overscroll-behav=
ior-inline: unset; overscroll-behavior-block: unset; margin-block: unset; m=
argin-inline: unset; scroll-margin-block: unset; scroll-margin-inline: unse=
t; padding-block: unset; padding-inline: unset; scroll-padding-block: unset=
; scroll-padding-inline: unset; inset-block: unset; inset-inline: unset; bl=
ock-size: unset; min-block-size: unset; max-block-size: unset; inline-size:=
 unset; min-inline-size: unset; max-inline-size: unset; background: unset; =
background-blend-mode: unset; border: unset; border-radius: unset; box-deco=
ration-break: unset; -moz-float-edge: unset; display: unset; position: fixe=
d; float: unset; clear: unset; vertical-align: unset; overflow: unset; over=
flow-anchor: unset; transition: unset; animation: unset; transform: unset; =
rotate: unset; scale: unset; translate: unset; offset: unset; scroll-behavi=
or: unset; scroll-snap-align: unset; scroll-snap-type: unset; overscroll-be=
havior: unset; isolation: unset; break-after: unset; break-before: unset; b=
reak-inside: unset; resize: unset; perspective: unset; perspective-origin: =
unset; backface-visibility: unset; transform-box: unset; transform-style: u=
nset; transform-origin: unset; contain: unset; -moz-appearance: unset; -moz=
-orient: unset; will-change: unset; shape-image-threshold: unset; shape-mar=
gin: unset; shape-outside: unset; touch-action: unset; -webkit-line-clamp: =
unset; columns: unset; column-fill: unset; column-rule: unset; column-span:=
 unset; content: unset; counter-increment: unset; counter-reset: unset; cou=
nter-set: unset; opacity: unset; box-shadow: unset; clip: rect(0px, 0px, 0p=
x, 0px); filter: unset; mix-blend-mode: unset; font: unset; font-synthesis:=
 unset; visibility: unset; writing-mode: unset; text-orientation: unset; co=
lor-adjust: unset; image-rendering: unset; image-orientation: unset; domina=
nt-baseline: unset; text-anchor: unset; color-interpolation: unset; color-i=
nterpolation-filters: unset; fill: unset; fill-opacity: unset; fill-rule: u=
nset; shape-rendering: unset; stroke: unset; stroke-width: unset; stroke-li=
necap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opac=
ity: unset; stroke-dasharray: unset; stroke-dashoffset: unset; clip-rule: u=
nset; marker: unset; paint-order: unset; -moz-context-properties: unset; bo=
rder-collapse: unset; empty-cells: unset; caption-side: unset; border-spaci=
ng: unset; color: unset; text-transform: unset; hyphens: unset; -moz-text-s=
ize-adjust: unset; text-indent: unset; overflow-wrap: unset; word-break: un=
set; text-justify: unset; text-align-last: unset; text-align: unset; letter=
-spacing: unset; word-spacing: unset; white-space: pre; text-shadow: unset;=
 text-emphasis: unset; text-emphasis-position: unset; -moz-tab-size: unset;=
 line-break: unset; -webkit-text-fill-color: unset; -webkit-text-stroke: un=
set; ruby-align: unset; ruby-position: unset; text-combine-upright: unset; =
text-rendering: unset; -moz-control-character-visibility: unset; text-under=
line-offset: unset; text-underline-position: unset; text-decoration-skip-in=
k: unset; cursor: unset; pointer-events: unset; -moz-user-input: unset; -mo=
z-user-modify: unset; -moz-user-focus: unset; caret-color: unset; scrollbar=
-color: unset; list-style: unset; quotes: unset; -moz-image-region: unset; =
margin: unset; scroll-margin: unset; outline: unset; -moz-outline-radius: u=
nset; outline-offset: unset; padding: unset; scroll-padding: unset; top: 0p=
x; right: unset; bottom: unset; left: unset; z-index: unset; flex-flow: uns=
et; place-content: unset; place-items: unset; flex: unset; place-self: unse=
t; order: unset; width: unset; min-width: unset; max-width: unset; height: =
unset; min-height: unset; max-height: unset; box-sizing: unset; object-fit:=
 unset; object-position: unset; grid-area: unset; grid: unset; gap: unset; =
vector-effect: unset; stop-color: unset; stop-opacity: unset; flood-color: =
unset; flood-opacity: unset; lighting-color: unset; mask-type: unset; clip-=
path: unset; mask: unset; x: unset; y: unset; cx: unset; cy: unset; rx: uns=
et; ry: unset; r: unset; table-layout: unset; text-overflow: unset; text-de=
coration: unset; ime-mode: unset; scrollbar-width: unset; user-select: text=
; -moz-window-dragging: unset; -moz-force-broken-image-icon: unset; -moz-bo=
x-align: unset; -moz-box-direction: unset; -moz-box-flex: unset; -moz-box-o=
rient: unset; -moz-box-pack: unset; -moz-box-ordinal-group: unset;">https:/=
/snipboard=2Eio/YFgIKs=2Ejpg</span> That&#39;s so nice, thank you!! My code=
 is here: http://paste=2Eubuntu=2Ecom/p/MbCJfPGzYW/ =2E I&#39;m not sure if=
 you have gnuradio(and QT) installed but if yes, simply &quot;python2 switc=
h_on_click=2Epy&quot; should do=2E Let me quickly elaborate how it works:
	<ul>
		<li>Class &quot;switch_on_click&quot; implements a normal gnuradio flow =
with USRP transmitter and receiver=2E</li>
		<li>It also uses a custom module together with buttons and a probe block=
 to call functions upon clicking on a button</li>
		<li>The callback functions are defined in class &quot;blk&quot;</li>
		<li>The most important is &quot;def button_rtx_handler&quot; on line 106=
 which is executed when user clicks on button &quot;Switch RTX (together)&q=
uot;</li>
	</ul>
	</li>
	<li>Again, thank you for trying this out!! If it works, would you mind sh=
aring this code then? I may be able to check then where it breaks on my sys=
tem</li>
	<li>I use 900 MHz as default center frequency (and &quot;rf_freq&quot;)=
=2E When clicking, I jump between dsp_freq=3D0 and dsp_freq=3D500e3=2E As t=
o my waveform, you can infer from my screenshots and code above: I am trans=
mitting and receiving a 1MHz waveform (which acts as an additional &quot;IF=
 stage&quot;)=2E The received signal is then downconcerted from 1MHz to DC=
=2E I use 5 MSsps sampling rate=2E</li>
</ul>

<div>
<div>&nbsp;</div>

<div>Again, thank you SO much=2E</div>

<div>&nbsp;</div>

<div>Best,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;
<div name=3D"quote" style=3D"margin:10px 5px 5px 10px; padding: 10px 0 10p=
x 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-=
mode: space; -webkit-line-break: after-white-space;">
<div style=3D"margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Donnerstag, 19=2E =
M&auml;rz 2020 um 10:43 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;rkossler@nd=2Eedu&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;lukashaase@gmx=2Eat&gt;<br/>
<b>Cc:</b>&nbsp;&quot;USRP-users@lists=2Eettus=2Ecom&quot; &lt;usrp-users@=
lists=2Eettus=2Ecom&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX=
 when using a timed command</div>

<div name=3D"quoted-content">
<div>
<div>Hi Lukas,
<div>So, the conclusion is that your Rx0-to-Rx1 relative phase is nearly c=
onstant such that it seems that both Rx0/Rx1 are phase coherent and Tx0/Tx1=
 are phase coherent=2E&nbsp; But, phase from Tx-to-Rx is random=2E&nbsp; Pl=
ease correct me if that is wrong=2E&nbsp;&nbsp;</div>

<div>&nbsp;</div>

<div>I have a few comments:</div>

<div>
<ul>
	<li>How do you measure/calculate the relative phase?</li>
	<li>Can you send me the full Python code to look at?&nbsp; As I mentioned=
 previously, I am not too good at gnuradio/Python, but I might be able to s=
pot something=2E</li>
	<li>As to your question, I always use synchronous measurements=2E&nbsp; A=
nd, I&#39;m confident that my Rx-to-Rx phase is coherent=2E&nbsp; But, I ha=
ven&#39;t really looked at Tx-to-Rx in a while so I will do so later today=
=2E&nbsp; Here are the steps I plan to take:
	<ol>
		<li>Connect Tx0 to Rx1=2E&nbsp; Note that there is a pretty strong leaka=
ge signal from Tx0 to Rx0 so I don&#39;t really need to provide a physical =
connection in order to get a signal on Rx0=2E&nbsp; The signal attenuation =
in this leakage path is approx 40 dB so it is not too much different than t=
he signal level I will receive on Rx1 if I use an external 30 dB attenuator=
=2E</li>
		<li>Set Rx and Tx frequency to freq 1</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq=
 1</li>
		<li>Set Rx and Tx frequency to freq 2</li>
		<li>Measure and note the relative phase for Rx0/Tx0 and Rx1/Tx0 for freq=
 2</li>
		<li>Repeat steps 2-5 a few times to ensure that the measurements are rep=
eatable</li>
	</ol>
	</li>
	<li>Questions: what should I use for freq 1 and freq 2?&nbsp; What wavefo=
rm are you transmitting?&nbsp; What sample rates for Tx and Rx?</li>
</ul>

<div>Rob</div>
</div>

<div>&nbsp;</div>
</div>

<div>
<div>&nbsp;</div>
&nbsp;

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Wed, Mar 18, 2020 at 7:47 PM Lukas Haase via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists=2Eettus=2Ecom" onclick=3D=
"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:usrp-users@lists=2Eettus=
=2Ecom&#39;; return false;" target=3D"_blank">usrp-users@lists=2Eettus=2Eco=
m</a>&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin: 0=2E0px 0=2E0px 0=2E0px=
 0=2E8ex;border-left: 1=2E0px solid rgb(204,204,204);padding-left: 1=2E0ex;=
">
<div>
<div style=3D"font-family: Verdana;font-size: 12=2E0px;">
<div>Hi Rob,</div>

<div>&nbsp;</div>

<div>I think the issue is really having two usrp_multi devices with timed =
commands and same timestmap or similar=2E From your tests below:</div>

<div>&nbsp;</div>

<div>1=2E) I can <strong>confirm </strong>that the relative phase between =
two RX in your suggested test is always the same! In fact, it is always 4=
=2E56 rad, even across restarts and for different frequencies! That somewha=
t makes sense because the phase offset is now only dependent on the differe=
nce between the two channels (fixed) and cable lengths from the splitter (f=
ixed)=2E I verified by removing the timed command on usrp source, the phase=
 offset becomes random after each retune=2E Of course, this is independent =
of TX tuning (timed vs=2E not)=2E For reference, this is the code used:</di=
v>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx =3D uhd=2Etune=
_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Erf_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Edsp_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Edsp_freq =3D -dsp=
_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx =3D uhd=2Etune=
_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Erf_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Edsp_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Edsp_freq =3D dsp_=
freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now =3D usrp_sink=2Eget_ti=
me_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when =3D now + uhd=2Etime_spec(=
1=2E0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink=2Eset_command_ti=
me(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source=2Eset_command_time(=
when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 =3D usrp_sink=2Eset_c=
enter_freq(tune_req_tx)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; # TX<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 =3D usrp_source=2Eset_cent=
er_freq(tune_req_rx, 0)&nbsp; #RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 =3D usrp_source=2Eset_cent=
er_freq(tune_req_rx, 1)&nbsp; #RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink=2Eclear_command_=
time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source=2Eclear_command_tim=
e()</div>
</div>

<div>&nbsp;
<div>
<div>2=2E) I also tried your second suggestion=2E Before reading on, you w=
anna guess what the outcome is?</div>

<div>I connected &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #1 (TX1 --&gt=
; RX1) and &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #2 (TX2 --&gt; RX2)=
=2E In absence of a second 30dB attenuator I used two antennas closely spac=
ed together=2E For reference, my code looks now like:</div>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx =3D uhd=2Etune=
_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Erf_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Edsp_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx=2Edsp_freq =3D -dsp=
_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx =3D uhd=2Etune=
_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Erf_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Edsp_freq_policy =
=3D uhd=2Etune_request=2EPOLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx=2Edsp_freq =3D dsp_=
freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now =3D usrp_sink=2Eget_ti=
me_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when =3D now + uhd=2Etime_spec(=
1=2E0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink=2Eset_command_ti=
me(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source=2Eset_command_time(=
when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 =3D usrp_sink=2Eset_c=
enter_freq(tune_req_tx, 0)&nbsp; &nbsp;&nbsp; # TX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 =3D usrp_sink=2Eset_center=
_freq(tune_req_tx, 1)&nbsp;&nbsp;&nbsp;&nbsp; # TX2<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 =3D usrp_source=2Eset_cent=
er_freq(tune_req_rx, 0) # RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res4 =3D usrp_source=2Eset_cent=
er_freq(tune_req_rx, 1) # RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink=2Eclear_command_=
time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source=2Eclear_command_tim=
e()</div>
</div>

<div>&nbsp;</div>

<div>I again look at the <strong>relative phase</strong> of RX1 and RX2 (o=
btained by dividing the two) and guess what: Also now the relative phase st=
ays constant! (This time it actually slightly varies from 3=2E0 rad to 3=2E=
7 rad between two different frequencies)=2E</div>

<div>What does that mean? I think it means that TX must be tuned coherentl=
y and RX must be tuned coherently, i=2Ee=2E, timed commands generally work =
for multiple TX&#39;s and multiple RX&#39;s <strong>individually</strong>=
=2E Do I get that right?</div>

<div>&nbsp;</div>

<div>What doesn&#39;t seem to work is RX+TX <strong>together</strong>=2E</=
div>

<div>&nbsp;</div>

<div>I am very desperately asking if you had coherent TX+RX setup working =
at any point or know somebody who did=2E It would be so much worth to know =
if this is something that never worked to begin with or if I&#39;m just doi=
ng something wrong=2E On the other hand I don&#39;t want to believe being t=
he only person on the planet having tried TX+RX phase coherent operation :-=
/</div>

<div>&nbsp;</div>
Any other further suggestions on how to continue debugging with the above =
in mind would be helpful too=2E

<div>&nbsp;</div>

<div>In my opinion there are two options left:</div>

<div>1=2E) There is still a nondeterministic delay between the TX and RX t=
imed commands (to my understanding, even a constant delay would result in c=
oherent phase)</div>

<div>2=2E) While the phase accumulators in RX are set to the same values (=
and in TX as well), they may be set to a different, random value=2E</div>

<div>&nbsp;</div>

<div>However, I don&#39;t really know how to test these=2E</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div style=3D"margin: 10=2E0px 5=2E0px 5=2E0px 10=2E0px;padding: 10=2E0px =
0=2E0px 10=2E0px 10=2E0px;border-left: 2=2E0px solid rgb(195,217,229);">
<div style=3D"margin: 0=2E0px 0=2E0px 10=2E0px;"><b>Gesendet:</b>&nbsp;Fre=
itag, 13=2E M&auml;rz 2020 um 12:27 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd=
=2Eedu" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:rkossler=
@nd=2Eedu&#39;; return false;" target=3D"_blank">rkossler@nd=2Eedu</a>&gt;<=
br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@g=
mx=2Eat" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:lukasha=
ase@gmx=2Eat&#39;; return false;" target=3D"_blank">lukashaase@gmx=2Eat</a>=
&gt;<br/>
<b>Cc:</b>&nbsp;&quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonb=
raun@gmail=2Ecom" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailt=
o:patchvonbraun@gmail=2Ecom&#39;; return false;" target=3D"_blank">patchvon=
braun@gmail=2Ecom</a>&gt;, &quot;<a href=3D"mailto:USRP-users@lists=2Eettus=
=2Ecom" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:USRP-use=
rs@lists=2Eettus=2Ecom&#39;; return false;" target=3D"_blank">USRP-users@li=
sts=2Eettus=2Ecom</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists=2Eettus=
=2Ecom" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:usrp-use=
rs@lists=2Eettus=2Ecom&#39;; return false;" target=3D"_blank">usrp-users@li=
sts=2Eettus=2Ecom</a>&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX=
 when using a timed command</div>

<div>
<div>
<div>Ok, great=2E&nbsp; I am trying to think of ways to now add the phase =
measurement=2E&nbsp; Ideas=2E=2E=2E</div>

<div>
<ul>
	<li>In order to get consistent phase, you would need to tune Rx and Tx DS=
P at the same time (rather than below where you are only tuning one of them=
)=2E&nbsp; So, assuming that this will not produce consistent phase results=
, then maybe try the following idea=2E=2E=2E</li>
	<li>If you want to check just Rx DSP tuning (with fixed Tx DSP tuning), y=
ou could try a 2 channel Rx measurement where the Tx is split externally wi=
th 1:2 splitter in order to drive both Rx0 and Rx1=2E&nbsp; Then, measure t=
he relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP f=
reqs to see if the relative phase on Rx remains constant=2E&nbsp; If so, th=
is would give you good confidence that Rx DSP tuning is indeed happening sy=
nchronously</li>
	<li>Assuming that the Rx IS synchronous in the step above (perhaps a bad =
assumption, but here goes), you could then check TX DSP tuning (with fixed =
Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected to Rx=
0 and Tx1 connected to Rx1=2E&nbsp; At this point we are confident that Rx =
DSP tuning is synchronous so any synchronous misbehavior would imply a Tx s=
ync problem=2E</li>
</ul>

<div>Sorry I can&#39;t think of better ideas=2E&nbsp;&nbsp;</div>

<div>Rob</div>
</div>
&nbsp;

<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase &lt=
;<a href=3D"mailto:lukashaase@gmx=2Eat" onclick=3D"parent=2Ewindow=2Elocati=
on=2Ehref=3D&#39;mailto:lukashaase@gmx=2Eat&#39;; return false;" target=3D"=
_blank">lukashaase@gmx=2Eat</a>&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin: 0=2E0px 0=2E0px 0=2E0px=
 0=2E8ex;border-left: 1=2E0px solid rgb(204,204,204);padding-left: 1=2E0ex;=
">Hi Rob,<br/>
<br/>
1=2E) yes, works(*)<br/>
2=2E) yes, works(*)<br/>
<br/>
(*): qualitatively=2E I set the timed command to &quot;get_current_time() =
+ uhd=2Etime_spec(2=2E0)&quot; and I see the chance 2 seconds after my clic=
k on the screen=2E I cannot (do not know how) check if it actually happens =
at sample-precicse location=2E<br/>
<br/>
Great, any ideas to simplify the setup would nice=2E I just don&#39;t know=
 how I could continue to debugging the phase=2E<br/>
<br/>
Best,<br/>
Luke<br/>
<br/>
<br/>
Gesendet:&nbsp;Freitag, 13=2E M&auml;rz 2020 um 11:08 Uhr<br/>
Von:&nbsp;&quot;Rob Kossler&quot; &lt;<a href=3D"mailto:rkossler@nd=2Eedu"=
 onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:rkossler@nd=2Ee=
du&#39;; return false;" target=3D"_blank">rkossler@nd=2Eedu</a>&gt;<br/>
An:&nbsp;&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx=2Eat=
" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:lukashaase@gmx=
=2Eat&#39;; return false;" target=3D"_blank">lukashaase@gmx=2Eat</a>&gt;<br=
/>
Cc:&nbsp;&quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gm=
ail=2Ecom" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:patch=
vonbraun@gmail=2Ecom&#39;; return false;" target=3D"_blank">patchvonbraun@g=
mail=2Ecom</a>&gt;, &quot;<a href=3D"mailto:USRP-users@lists=2Eettus=2Ecom"=
 onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:USRP-users@list=
s=2Eettus=2Ecom&#39;; return false;" target=3D"_blank">USRP-users@lists=2Ee=
ttus=2Ecom</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists=2Eettus=2Ecom" =
onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:usrp-users@lists=
=2Eettus=2Ecom&#39;; return false;" target=3D"_blank">usrp-users@lists=2Eet=
tus=2Ecom</a>&gt;<br/>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when u=
sing a timed command<br/>
<br/>
Thanks Lukas,<br/>
I wanted to confirm that you did not have an older version of FPGA firmwar=
e because there was a DDC/DUC bug fix[<a href=3D"https://github=2Ecom/Ettus=
Research/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d" target=3D"_b=
lank">https://github=2Ecom/EttusResearch/fpga/commit/0b2364653405612a6d5dfa=
a0e69b1c6798771e6d</a>] related to phase=2E&nbsp; However, the version you =
provided with uhd_usrp_probe confirms that you have the bug fix included=2E=
&nbsp; So, this is not the problem=2E&nbsp;<br/>
&nbsp;<br/>
From what you said, I assume that you can successfully do the following:<b=
r/>
1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not ch=
ange TX RF) and you can see the frequency change at the specified command t=
ime (i=2Ee=2E, if you specify the command time 1 sec in the future, the cha=
nge does not occur until 1 sec in the future)=2E<br/>
2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see =
the frequency change at the specified command time=2E<br/>
&nbsp;<br/>
I am trying to simplify the issue by removing RF tuning completely and by =
tuning only 1 of Rx/Tx at a time=2E&nbsp; Perhaps this will help lead to th=
e answer=2E<br/>
Rob<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
<br/>
On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase &lt;<a href=3D"mailto:lukasha=
ase@gmx=2Eat" onclick=3D"parent=2Ewindow=2Elocation=2Ehref=3D&#39;mailto:lu=
kashaase@gmx=2Eat&#39;; return false;" target=3D"_blank">lukashaase@gmx=2Ea=
t</a>[mailto:<a href=3D"mailto:lukashaase@gmx=2Eat" onclick=3D"parent=2Ewin=
dow=2Elocation=2Ehref=3D&#39;mailto:lukashaase@gmx=2Eat&#39;; return false;=
" target=3D"_blank">lukashaase@gmx=2Eat</a>]&gt; wrote:Hi again Rob,<br/>
<br/>
Yes, I confirm:<br/>
<br/>
1=2E) Finally I get the commands to execute at the same time (TX and RX in=
dividually and both at the same time)<br/>
2=2E) Yes, the phase is random after each retune, even when I retune back =
to the same frequency<br/>
3=2E) (2) is only true if it includes *DSP* retuning=2E With naalog retuni=
ng (+integer-N retuning) I get phase coherence, as expected=2E<br/>
<br/>
I actually expected the PLL retuning much more challenging than the DSP re=
tuning but for some reason it seems to be the opposite=2E=2E=2E<br/>
<br/>
Thanks,<br/>
Lukas<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
&nbsp;</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br/>
USRP-users mailing list<br/>
<a href=3D"mailto:USRP-users@lists=2Eettus=2Ecom" onclick=3D"parent=2Ewind=
ow=2Elocation=2Ehref=3D&#39;mailto:USRP-users@lists=2Eettus=2Ecom&#39;; ret=
urn false;" target=3D"_blank">USRP-users@lists=2Eettus=2Ecom</a><br/>
<a href=3D"http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-users_lists=2E=
ettus=2Ecom" target=3D"_blank">http://lists=2Eettus=2Ecom/mailman/listinfo/=
usrp-users_lists=2Eettus=2Ecom</a></blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div></body></html>


--===============3299488183834432240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3299488183834432240==--
