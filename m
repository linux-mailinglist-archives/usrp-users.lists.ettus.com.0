Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C6F426D29
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 17:01:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BAC9384E66
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 11:01:49 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1D6838475D
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 11:00:58 -0400 (EDT)
Date: Fri, 8 Oct 2021 15:00:58 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <BCvjPlTisZk8vE3HhOTqnGdkewXaDCk7f47Nx1RWxY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CACaXmv9RQCX75vo_im4XFKpp8LOQbxaScUjGGMoj8cyeDYZ+Og@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: UULIDXLCXIQAJJNKEZMULLLYLFPK7NBX
X-Message-ID-Hash: UULIDXLCXIQAJJNKEZMULLLYLFPK7NBX
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UULIDXLCXIQAJJNKEZMULLLYLFPK7NBX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6260389190396912204=="

This is a multi-part message in MIME format.

--===============6260389190396912204==
Content-Type: multipart/alternative;
 boundary="b1_BCvjPlTisZk8vE3HhOTqnGdkewXaDCk7f47Nx1RWxY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BCvjPlTisZk8vE3HhOTqnGdkewXaDCk7f47Nx1RWxY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Morning Neel.  Is this true for the N320?  If I do a read-all like you po=
int out, there is no =E2=80=9Cname=E2=80=9D field.  If I try to do a read=
 on just name, it comes back with an error

> $ ./lib/uhd/utils/usrp_burn_mb_eeprom --values name
>
> Creating USRP device from address:=20
>
> \[INFO\] \[UHD\] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.=
2-0-g01575510
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_=
addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3DDEADBEEF,fpga=3DX=
G,claimed=3DFalse,addr=3D192.168.10.2
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=3D=
XG,mgmt_addr=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_s=
ource=3Dinternal'.
>
> \[INFO\] \[MPM.Rhodium-0\] init() called with args \`fpga=3DXG,mgmt_add=
r=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'
>
> \[INFO\] \[MPM.Rhodium-1\] init() called with args \`fpga=3DXG,mgmt_add=
r=3D192.168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'
>
> Fetching current settings from EEPROM...
>
> Cannot find value for EEPROM\[name\]

Neel Pandeya wrote:

> Hello Jason:
>
> Yeah, there is a "name" field in the EEPROM that you can write with the
> "usrp_burn_mb_eeprom" utility.  Run "usrp_burn_mb_eeprom --read-all" to
> view the current EEPROM contents.
>
> \--Neel Pandeya
>
> On Fri, 8 Oct 2021 at 07:47, [jason@gardettoengineering.com](mailto:jas=
on@gardettoengineering.com) wrote:
>
> > I have a series of N320s sprinkled across our lab and I would like to
> > change their names so it is clear where they are located (as opposed =
to
> > keeping a list of which serial number is where), is this possible? i =
could
> > have sworn I could do this with a different Ettus device in the past,=
 but I
> > can=E2=80=99t recall which one. I know some of them could have their =
hostnames
> > changed, but I don=E2=80=99t think that it is possible to do that sta=
tically on the
> > N320. Thoughts?
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_BCvjPlTisZk8vE3HhOTqnGdkewXaDCk7f47Nx1RWxY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Morning Neel.  Is this true for the N320?  If I do a read-all like you p=
oint out, there is no =E2=80=9Cname=E2=80=9D field.  If I try to do a read =
on just name, it comes back with an error</p><blockquote><p>$ ./lib/uhd/uti=
ls/usrp_burn_mb_eeprom --values name</p><p>Creating USRP device from addres=
s: </p><p>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.=
0.2-0-g01575510</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel wi=
th args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3DDEADB=
EEF,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2</p><p>[INFO] [MPM.PeriphM=
anager] init() called with device args `fpga=3DXG,mgmt_addr=3D192.168.10.2,=
product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.</p><p>[INFO=
] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.168.10=
.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'</p><p>[IN=
FO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.168.=
10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'</p><p>F=
etching current settings from EEPROM...</p><p>Cannot find value for EEPROM[=
name]</p></blockquote><p>Neel Pandeya wrote:</p><blockquote><p>Hello Jason:=
</p><p>Yeah, there is a "name" field in the EEPROM that you can write with =
the
"usrp_burn_mb_eeprom" utility.  Run "usrp_burn_mb_eeprom --read-all" to
view the current EEPROM contents.</p><p>--Neel Pandeya</p><p>On Fri, 8 Oct =
2021 at 07:47, <a href=3D"mailto:jason@gardettoengineering.com">jason@garde=
ttoengineering.com</a> wrote:</p><blockquote><p>I have a series of N320s sp=
rinkled across our lab and I would like to
change their names so it is clear where they are located (as opposed to
keeping a list of which serial number is where), is this possible? i could
have sworn I could do this with a different Ettus device in the past, but I
can=E2=80=99t recall which one. I know some of them could have their hostna=
mes
changed, but I don=E2=80=99t think that it is possible to do that staticall=
y on the
N320. Thoughts?</p><div contenteditable=3D"false" class=3D""><hr></div><p>U=
SRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote><p><br></p></blockquote>

--b1_BCvjPlTisZk8vE3HhOTqnGdkewXaDCk7f47Nx1RWxY--

--===============6260389190396912204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6260389190396912204==--
