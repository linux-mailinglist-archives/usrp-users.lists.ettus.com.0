Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E5C19338
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 22:13:41 +0200 (CEST)
Received: from [::1] (port=45496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOpQC-0001bR-1g; Thu, 09 May 2019 16:13:40 -0400
Received: from atl4mhob11.registeredsite.com ([209.17.115.49]:54768)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hOpPe-0001Rr-Ci
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 16:13:36 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob11.registeredsite.com (8.14.4/8.14.4) with ESMTP id x49KCN9G026675
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Thu, 9 May 2019 16:12:23 -0400
Received: (qmail 7352 invoked by uid 0); 9 May 2019 20:12:23 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 9 May 2019 20:12:23 -0000
Message-Id: <691F0564-B5AA-48C6-9258-D15F006E9F7D@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Thu, 9 May 2019 14:12:21 -0600
In-Reply-To: <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com> <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
 <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
 <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2487242221823619949=="
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


--===============2487242221823619949==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DFCED337-19A6-499B-8821-B66548C74590"


--Apple-Mail=_DFCED337-19A6-499B-8821-B66548C74590
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99s a rev 2, =
based on the factory label.  Is this N210 a lost cause if it is actually =
a Rev2 N210?=20

Joe

> On May 9, 2019, at 2:05 PM, Nick Foster <bistromath@gmail.com> wrote:
>=20
> Well, it's not a rev 4. It's either 2 or 3 in terms of hardware =
revision.=20
>=20
> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
> =E2=80=A6able to ping 192.168.10.2 successfully.
>=20
>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>=20
>> Ian,=20
>>=20
>> Yes, I have tried many times to boot in safe mode, same result =
regardless.  Yes, I am able to pin to 192.168.10.2 successfully.=20
>>=20
>> Joe
>>=20
>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>=20
>>> Ian and Nick,=20
>>>=20
>>> Thanks for the assistance.  Attached are dropbox links to two =
snapshot photos:  1) the factory label on the back of the N210, showing =
N210 r:2.0 and 2) a top side view of the N210.=20
>>>=20
>>> 1) =
https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0 =
<https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0>
>>> 2) =
https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0 =
<https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0>
>>>=20
>>> Seems this unit is indeed a rev 2 N210, yes?=20
>>>=20
>>> Joe
>>>=20
>>>> On May 9, 2019, at 12:40 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>>>=20
>>>> Moreover, the best "tell" is to look at the N210 motherboard. If =
the SRAM chip is on the top side, it's a rev 2/3. If the SRAM is on the =
bottom side, it's a rev 4. If you send a picture along of the top of the =
N210, I can tell you if it's early or late rev.
>>>>=20
>>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>> Joe,
>>>> So I scratched my head about this a little late last night and =
looked back through the development repository for the N210 and as far =
as I can tell there was never customer facing FPGA code for a Rev2 N210. =
Chatting with Matt this morning he shared my feeling that a Rev2 wasn't =
sold to customers, so I'm curious if you have a unit that has a factory =
label that says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB =
(which can be missleading).
>>>>=20
>>>> Also have you tried booting into the safe image and verifying that =
it at least pings on 192.168.10.2?
>>>>=20
>>>> If we can conclusively identify which rev of h/w you have I can =
probably help further.
>>>>=20
>>>> Ian
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>=20
>=20


--Apple-Mail=_DFCED337-19A6-499B-8821-B66548C74590
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Okay.=
 &nbsp;I=E2=80=99ve asserted from the outset that it=E2=80=99s a rev 2, =
based on the factory label. &nbsp;Is this N210 a lost cause if it is =
actually a Rev2 N210?&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Joe<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">On May 9, 2019, at 2:05 PM, Nick Foster =
&lt;<a href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Well, it's not a rev 4. It's either 2 or 3 in terms of =
hardware revision. <br class=3D""></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May =
9, 2019 at 12:58 PM Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com" =
class=3D"">k5so@k5so.com</a>&gt; wrote:<br class=3D""></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D"">=E2=80=A6able to ping 192.168.10.2 =
successfully.<br class=3D""><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On May 9, 2019, at 1:54 PM, Joe =
Martin &lt;<a href=3D"mailto:k5so@k5so.com" target=3D"_blank" =
class=3D"">k5so@k5so.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_-2513206580084366361Apple-interchange-newline"><div =
class=3D""><div style=3D"overflow-wrap: break-word;" =
class=3D"">Ian,&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Yes, I have tried many times to boot in safe mode, same =
result regardless.&nbsp; Yes, I am able to pin to 192.168.10.2 =
successfully.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe<br class=3D""><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On May 9, 2019, at 1:47 PM, Joe =
Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" class=3D"">usrp-users@lists.ettus.com</a>&gt; =
wrote:</div><br =
class=3D"gmail-m_-2513206580084366361Apple-interchange-newline"><div =
class=3D""><div style=3D"overflow-wrap: break-word;" class=3D"">Ian and =
Nick,&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">Thanks =
for the assistance.&nbsp; Attached are dropbox links to two snapshot =
photos: &nbsp;1) the factory label on the back of the N210, showing N210 =
r:2.0 and 2) a top side view of the N210.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">1)&nbsp;<a =
href=3D"https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D=
0" target=3D"_blank" =
class=3D"">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?d=
l=3D0</a></div><div class=3D"">2)&nbsp;<a =
href=3D"https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0" target=3D"_blank" =
class=3D"">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?d=
l=3D0</a></div><div class=3D""><br class=3D""></div><div class=3D"">Seems =
this unit is indeed a rev 2 N210, yes?&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On May =
9, 2019, at 12:40 PM, Nick Foster &lt;<a =
href=3D"mailto:bistromath@gmail.com" target=3D"_blank" =
class=3D"">bistromath@gmail.com</a>&gt; wrote:</div><br =
class=3D"gmail-m_-2513206580084366361Apple-interchange-newline"><div =
class=3D""><div dir=3D"ltr" class=3D"">Moreover, the best "tell" is to =
look at the N210 motherboard. If the SRAM chip is on the top side, it's =
a rev 2/3. If the SRAM is on the bottom side, it's a rev 4. If you send =
a picture along of the top of the N210, I can tell you if it's early or =
late rev.<br class=3D""></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May =
9, 2019 at 11:36 AM Ian Buckley via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"auto" class=3D"">Joe,<div =
dir=3D"auto" class=3D"">So I scratched my head about this a little late =
last night and looked back through the development repository for the =
N210 and as far as I can tell there was never customer facing FPGA code =
for a Rev2 N210. Chatting with Matt this&nbsp;morning he shared my =
feeling that a Rev2 wasn't sold to customers, so I'm curious if you have =
a unit that has a factory label that says N210Rev2 or if you have seen =
"usrp2 rev2.0" on the PCB (which can be missleading).</div><div =
dir=3D"auto" class=3D""><br class=3D""></div><div dir=3D"auto" =
class=3D"">Also have you tried booting into the safe image and verifying =
that it at least pings on 192.168.10.2?</div><div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">If we can =
conclusively identify which rev of h/w you have I can probably help =
further.</div><div dir=3D"auto" class=3D""><br class=3D""></div><div =
dir=3D"auto" =
class=3D"">Ian</div></div></blockquote></div></div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D""><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D""></div></blockquote></div><br =
class=3D""></div></div></div></blockquote></div><br =
class=3D""></div></blockquote></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_DFCED337-19A6-499B-8821-B66548C74590--


--===============2487242221823619949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2487242221823619949==--

