Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C88E19330
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 22:06:55 +0200 (CEST)
Received: from [::1] (port=42984 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOpJe-0000zC-CJ; Thu, 09 May 2019 16:06:54 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:37057)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOpJ5-0000qf-Ew
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 16:06:49 -0400
Received: by mail-io1-f51.google.com with SMTP id u2so1552845ioc.4
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 13:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y6pYMHtb7u1beHbVh/Bkh3+zxY+SyXlAstxaI+oGN4I=;
 b=qHqFAvRCEGMpJNAHH4X9KtDzW7H9sxxcc1gG7W/TNS7vnJ+iJPjZDO11rYfT0LHH6B
 hVdz2Q5t/DQO7Lb/Ed+UTU+wzRzHYLN+PkxcHVax8ieGatcDS0MXFhpH02uuk4WMwAz/
 mTXwsSE1E7gZz6ZLreqScGWDQFQg375DfDvQXbh4iQ4TEkjWvNKK+IiIXc03yGcxhmzb
 /FyN7jN22Jz16PctqZl6+doHaXKerCFwEdPbTM2rsPyZi8UH9jtVEK+Rcvp9+yrmCFPB
 stO2iHAnh+CB4TT7c2S7y9exZHL68zzqoI6cV4u8Zn7z6A6OYUuNDlrNtqDCSjdw302H
 IAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y6pYMHtb7u1beHbVh/Bkh3+zxY+SyXlAstxaI+oGN4I=;
 b=lTmGTgmkDr1TNLSk3kIaO/bmA0VW/M+oUFodCe1en7CX+1ba3gD3kL7x6QfkOVPn4B
 dToLlAHjMuQD1VnyfNOlNisiin5h9aO4yj10uGa2dsW+pOx0Cw7Vg3nS6h0805vFatlH
 YKbjdqFk5BuG+X4U+8B+cg40dxYuwliHXm0NnpJF/vlRW2Ncu+jXWoCkN9xyAJkEs9ok
 fhWd1HsKMWqKfTLn5mDlOoAxyd39gM/OR3mhUEdE08ONXkLJrK8y/l22jl+rltyA+D7o
 uHrO4rYgdVzUmYw9o/jSZZoP7feOojB/EWMV2mLPrzx3RyUb71C0A81e1B1yKetjaY5b
 AyoQ==
X-Gm-Message-State: APjAAAURLCwGVxFr5yv5NdRi961F7A1dh9wnjMef3cFUUT4SYHaFH0Mf
 j03AyALVLhi1Wem4J/1ZUyfLjaGV8uR/wM4FdLJkXw==
X-Google-Smtp-Source: APXvYqy7zQiMH3Xvlc1ZIXvZFT7KnTZDWr1+PBe6UvGtS8A/cm9p4vAnFGlwDbKIxdAKl/EnSLzy+N9VU9oKjREors0=
X-Received: by 2002:a6b:f90c:: with SMTP id j12mr3871001iog.53.1557432338606; 
 Thu, 09 May 2019 13:05:38 -0700 (PDT)
MIME-Version: 1.0
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
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com>
 <5CD36887.5050805@gmail.com> <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
 <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
In-Reply-To: <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
Date: Thu, 9 May 2019 13:05:26 -0700
Message-ID: <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
To: Joe Martin <k5so@k5so.com>
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5855828920845936704=="
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

--===============5855828920845936704==
Content-Type: multipart/alternative; boundary="0000000000004dec89058879f900"

--0000000000004dec89058879f900
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, it's not a rev 4. It's either 2 or 3 in terms of hardware revision.

On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com> wrote:

> =E2=80=A6able to ping 192.168.10.2 successfully.
>
> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com> wrote:
>
> Ian,
>
> Yes, I have tried many times to boot in safe mode, same result
> regardless.  Yes, I am able to pin to 192.168.10.2 successfully.
>
> Joe
>
> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Ian and Nick,
>
> Thanks for the assistance.  Attached are dropbox links to two snapshot
> photos:  1) the factory label on the back of the N210, showing N210 r:2.0
> and 2) a top side view of the N210.
>
> 1) https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0
> 2) https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0
>
> Seems this unit is indeed a rev 2 N210, yes?
>
> Joe
>
> On May 9, 2019, at 12:40 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> Moreover, the best "tell" is to look at the N210 motherboard. If the SRAM
> chip is on the top side, it's a rev 2/3. If the SRAM is on the bottom sid=
e,
> it's a rev 4. If you send a picture along of the top of the N210, I can
> tell you if it's early or late rev.
>
> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Joe,
>> So I scratched my head about this a little late last night and looked
>> back through the development repository for the N210 and as far as I can
>> tell there was never customer facing FPGA code for a Rev2 N210. Chatting
>> with Matt this morning he shared my feeling that a Rev2 wasn't sold to
>> customers, so I'm curious if you have a unit that has a factory label th=
at
>> says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which can b=
e
>> missleading).
>>
>> Also have you tried booting into the safe image and verifying that it at
>> least pings on 192.168.10.2?
>>
>> If we can conclusively identify which rev of h/w you have I can probably
>> help further.
>>
>> Ian
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>

--0000000000004dec89058879f900
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, it&#39;s not a rev 4. It&#39;s either 2 or 3 in term=
s of hardware revision. <br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 at 12:58 PM Joe Martin &l=
t;<a href=3D"mailto:k5so@k5so.com">k5so@k5so.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap=
: break-word;">=E2=80=A6able to ping 192.168.10.2 successfully.<br><div><br=
><blockquote type=3D"cite"><div>On May 9, 2019, at 1:54 PM, Joe Martin &lt;=
<a href=3D"mailto:k5so@k5so.com" target=3D"_blank">k5so@k5so.com</a>&gt; wr=
ote:</div><br class=3D"gmail-m_-2513206580084366361Apple-interchange-newlin=
e"><div><div style=3D"overflow-wrap: break-word;">Ian,=C2=A0<div><br></div>=
<div>Yes, I have tried many times to boot in safe mode, same result regardl=
ess.=C2=A0 Yes, I am able to pin to 192.168.10.2 successfully.=C2=A0</div><=
div><br></div><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 9,=
 2019, at 1:47 PM, Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:</div><br class=3D"gmail-m_-2513206580084366361Apple-interchange-newlin=
e"><div><div style=3D"overflow-wrap: break-word;">Ian and Nick,=C2=A0<div><=
br></div><div>Thanks for the assistance.=C2=A0 Attached are dropbox links t=
o two snapshot photos: =C2=A01) the factory label on the back of the N210, =
showing N210 r:2.0 and 2) a top side view of the N210.=C2=A0</div><div><br>=
</div><div>1)=C2=A0<a href=3D"https://www.dropbox.com/s/u92x02rni71kfb3/201=
90509_133253.jpg?dl=3D0" target=3D"_blank">https://www.dropbox.com/s/u92x02=
rni71kfb3/20190509_133253.jpg?dl=3D0</a></div><div>2)=C2=A0<a href=3D"https=
://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0" target=3D"=
_blank">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0</a></div><div><br></div><div>Seems this unit is indeed a rev 2 N210, yes?=
=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote type=3D"cite"><=
div>On May 9, 2019, at 12:40 PM, Nick Foster &lt;<a href=3D"mailto:bistroma=
th@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:</div><b=
r class=3D"gmail-m_-2513206580084366361Apple-interchange-newline"><div><div=
 dir=3D"ltr">Moreover, the best &quot;tell&quot; is to look at the N210 mot=
herboard. If the SRAM chip is on the top side, it&#39;s a rev 2/3. If the S=
RAM is on the bottom side, it&#39;s a rev 4. If you send a picture along of=
 the top of the N210, I can tell you if it&#39;s early or late rev.<br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"auto">Joe,<div dir=3D"auto">So I scratched my head about this a =
little late last night and looked back through the development repository f=
or the N210 and as far as I can tell there was never customer facing FPGA c=
ode for a Rev2 N210. Chatting with Matt this=C2=A0morning he shared my feel=
ing that a Rev2 wasn&#39;t sold to customers, so I&#39;m curious if you hav=
e a unit that has a factory label that says N210Rev2 or if you have seen &q=
uot;usrp2 rev2.0&quot; on the PCB (which can be missleading).</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Also have you tried booting into the =
safe image and verifying that it at least pings on 192.168.10.2?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">If we can conclusively identify wh=
ich rev of h/w you have I can probably help further.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Ian</div></div></blockquote></div></div></bloc=
kquote></div><br></div></div>______________________________________________=
_<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br=
></div></blockquote></div><br></div></div></div></blockquote></div><br></di=
v></blockquote></div>

--0000000000004dec89058879f900--


--===============5855828920845936704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5855828920845936704==--

