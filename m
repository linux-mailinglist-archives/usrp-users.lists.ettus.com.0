Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C065C1904E
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 20:42:03 +0200 (CEST)
Received: from [::1] (port=39802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOnzU-0000pP-OU; Thu, 09 May 2019 14:42:00 -0400
Received: from mail-it1-f175.google.com ([209.85.166.175]:52479)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOnyv-0000TM-Qp
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 14:41:55 -0400
Received: by mail-it1-f175.google.com with SMTP id q65so5281511itg.2
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 11:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=POqBn3RwLZutyTe7z7GQMjD0Y2nY3KtDSxDWEHiupZ4=;
 b=rrFC4rBY2jAYIVhfuD+LBGGgaxnAfUwJkB1W2o/S5bf/lgC8Qrl2tj+HN31mFNsJRa
 vd589vIM0trEx3YaQEm1Bi3hxgvc1jQiraCfxg9Y1QhPhqCB4TPLAYcvYY1l9/6UvhSD
 NzfPMhJ4EC9xi9mISyovU6tK0bdAufLe9gNNUjUOZsaLzSIf26yE8s56Nr/pHJOGTZqK
 HqlWXB9cE83KpFAR5ylYjC7759sw+nfPxJ8o8oAdi1GRaoNLLHHaeMjLh/FogozQcqoa
 TtmuHRXt1hmuKfTAIKj+F2ktxvLyUqtAaDVfcWCk1AlZA6fOg+daVZACoyhMAf2iNhI2
 dQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POqBn3RwLZutyTe7z7GQMjD0Y2nY3KtDSxDWEHiupZ4=;
 b=H2iSqHjAnwzN1HDs9ycV5Mxw9yYRt7yGxR0y59DPf2E/Y03Cj+jQThFgohbYZimCEW
 lgANEUhmsUtgcnp6ZMlYHe6DFb3gV7UD1rkEaS3YEdKdHgpX83PysWoiXX/BQ3IWe308
 1iFufVpX5EX2yc4RN7Dz8qwghiiVQWdxvKXNMxwVzuyRb2cK0EtYL3bESi2lNAeoBIBG
 8LVOH8rvEYrs56D/ACrdrx5+WcI8LVjxCVuDz3OClSPXtn95eS0nhwI2sLpD7SOylaYR
 t0SMxNPgsh9fItCkMZOXifKsdVHjR8MEtwYHHKB5H2W53DSLZeTNtmCSeiZzqrdFZO1h
 RoRQ==
X-Gm-Message-State: APjAAAVBCxeTfhtnoIsTMs9drpAzQlGS9a3NZwzlFicrQyXWdZu7oW2U
 0CpFqaMVANmSKuhXtDbEs0f+Bn+ImpR7AxwixfI=
X-Google-Smtp-Source: APXvYqzIJnClvAIZ6yTXuJrb/8Nv/Qw1tUMGb6LOhqzpnG98K6I/SO8c3pvUK3yaG+97xyNU2ihD2IWwMY6uzSz090Q=
X-Received: by 2002:a24:85d4:: with SMTP id r203mr4124093itd.3.1557427245053; 
 Thu, 09 May 2019 11:40:45 -0700 (PDT)
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
In-Reply-To: <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
Date: Thu, 9 May 2019 11:40:33 -0700
Message-ID: <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
To: Ian Buckley <ianb@ionconcepts.com>
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
Content-Type: multipart/mixed; boundary="===============4221797055633204185=="
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

--===============4221797055633204185==
Content-Type: multipart/alternative; boundary="000000000000b47ef2058878c9af"

--000000000000b47ef2058878c9af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Moreover, the best "tell" is to look at the N210 motherboard. If the SRAM
chip is on the top side, it's a rev 2/3. If the SRAM is on the bottom side,
it's a rev 4. If you send a picture along of the top of the N210, I can
tell you if it's early or late rev.

On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Joe,
> So I scratched my head about this a little late last night and looked bac=
k
> through the development repository for the N210 and as far as I can tell
> there was never customer facing FPGA code for a Rev2 N210. Chatting with
> Matt this morning he shared my feeling that a Rev2 wasn't sold to
> customers, so I'm curious if you have a unit that has a factory label tha=
t
> says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which can be
> missleading).
>
> Also have you tried booting into the safe image and verifying that it at
> least pings on 192.168.10.2?
>
> If we can conclusively identify which rev of h/w you have I can probably
> help further.
>
> Ian
>
> On Thu, May 9, 2019, 8:05 AM Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Argh.  Yes, maybe that=E2=80=99s what I will need to do then.  I=E2=80=
=99ll try it.
>>
>> Looks like the earliest vintage of UHD that=E2=80=99s available is Feb 2=
014
>> (v3.4.0), which is about 4 years after the Rev2 N210, I think.  So that =
UHD
>> version may still be too recent to work with the Rev2 N210.  That=E2=80=
=99ll be my
>> last attempt before abandoning the thing as you did with yours.
>>
>> Thanks for the comments and help, Jason.  Good luck with your projects!
>>
>> Joe
>>
>> On May 9, 2019, at 8:20 AM, Jason Matusiak <jason@gardettoengineering.co=
m>
>> wrote:
>>
>> Maybe try running a VM of a version of Ubuntu that is roughly the vintag=
e
>> of that version of UHD?
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe
>> Martin via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Thursday, May 9, 2019 9:53 AM
>> *To:* Joe Martin
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* [USRP-users] Need a little help with running legacy prebuilt
>> UHD versions
>>
>> I need a bit of help to understand how to run legacy prebuilt UHD
>> versions from the files.ettus.com/binaries/uhd repository.
>>
>> I would like to try various UHD versions to try to find a version that
>> will run with an elderly (Rev 2) N210 with unknown firmware/fpga images =
in
>> it.  After downloading a legacy version, e.g.,
>> uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =E2=80=9Ci=
nstall=E2=80=9D I
>> am not understanding what I need to do next to actually run the version,=
 as
>> uhd_usrp_probe =E2=80=94version reports the version of UHD that I origin=
ally had
>> installed, not the legacy version I intended to install.
>>
>> I am running Ubuntu 18.04, should I expect to be able to run the legacy
>> versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in the exam=
ple
>> above ?
>>
>> Clearly I=E2=80=99m missing something fundamental, and likely simple, in=
 my
>> understanding about how to use these prebuilt older versions.  I have ha=
d
>> no problem building, installing, and running UHD versions from source bu=
t I
>> have never tried to run a =E2=80=9Cprebuilt=E2=80=9D version before.
>>
>> Joe
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b47ef2058878c9af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Moreover, the best &quot;tell&quot; is to look at the N210=
 motherboard. If the SRAM chip is on the top side, it&#39;s a rev 2/3. If t=
he SRAM is on the bottom side, it&#39;s a rev 4. If you send a picture alon=
g of the top of the N210, I can tell you if it&#39;s early or late rev.<br>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"aut=
o">Joe,<div dir=3D"auto">So I scratched my head about this a little late la=
st night and looked back through the development repository for the N210 an=
d as far as I can tell there was never customer facing FPGA code for a Rev2=
 N210. Chatting with Matt this=C2=A0morning he shared my feeling that a Rev=
2 wasn&#39;t sold to customers, so I&#39;m curious if you have a unit that =
has a factory label that says N210Rev2 or if you have seen &quot;usrp2 rev2=
.0&quot; on the PCB (which can be missleading).</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Also have you tried booting into the safe image and=
 verifying that it at least pings on 192.168.10.2?</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">If we can conclusively identify which rev of h/w=
 you have I can probably help further.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Ian</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 9, 2019, 8:05 AM Joe Martin via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;">Argh.=C2=
=A0 Yes, maybe that=E2=80=99s what I will need to do then.=C2=A0 I=E2=80=99=
ll try it.=C2=A0<div><br></div><div>Looks like the earliest vintage of UHD =
that=E2=80=99s available is Feb 2014 (v3.4.0), which is about 4 years after=
 the Rev2 N210, I think.=C2=A0 So that UHD version may still be too recent =
to work with the Rev2 N210.=C2=A0 That=E2=80=99ll be my last attempt before=
 abandoning the thing as you did with yours. =C2=A0<div><br></div><div>Than=
ks for the comments and help, Jason.=C2=A0 Good luck with your projects!</d=
iv><div><br></div><div>Joe<br><div><div><br><blockquote type=3D"cite"><div>=
On May 9, 2019, at 8:20 AM, Jason Matusiak &lt;<a href=3D"mailto:jason@gard=
ettoengineering.com" rel=3D"noreferrer" target=3D"_blank">jason@gardettoeng=
ineering.com</a>&gt; wrote:</div><br class=3D"gmail-m_2968925698921149621m_=
-6828260562029000969Apple-interchange-newline"><div><div style=3D"font-styl=
e:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none;font-family:Calibri,Arial,Helvetica,sans=
-serif;font-size:12pt">Maybe try running a VM of a version of Ubuntu that i=
s roughly the vintage of that version of UHD?</div><div id=3D"gmail-m_29689=
25698921149621m_-6828260562029000969Signature" style=3D"font-family:Helveti=
ca;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;text-decoration:none"><div><div id=
=3D"gmail-m_2968925698921149621m_-6828260562029000969appendonsend"></div><d=
iv style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">=
<br></div><hr style=3D"display:inline-block;width:782.031px"><div id=3D"gma=
il-m_2968925698921149621m_-6828260562029000969divRplyFwdMsg" dir=3D"ltr"><f=
ont style=3D"font-size:11pt" face=3D"Calibri, sans-serif"><b>From:</b><span=
 class=3D"gmail-m_2968925698921149621m_-6828260562029000969Apple-converted-=
space">=C2=A0</span>USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-bounces@lists=
.ettus.com</a>&gt; on behalf of Joe Martin via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;<br><b>Sent:</b><span class=3D"gmail-m_2968925=
698921149621m_-6828260562029000969Apple-converted-space">=C2=A0</span>Thurs=
day, May 9, 2019 9:53 AM<br><b>To:</b><span class=3D"gmail-m_29689256989211=
49621m_-6828260562029000969Apple-converted-space">=C2=A0</span>Joe Martin<b=
r><b>Cc:</b><span class=3D"gmail-m_2968925698921149621m_-682826056202900096=
9Apple-converted-space">=C2=A0</span><a href=3D"mailto:usrp-users@lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b><span class=3D"gmail-m_2968925698921149621m_-68282605620=
29000969Apple-converted-space">=C2=A0</span>[USRP-users] Need a little help=
 with running legacy prebuilt UHD versions</font><div>=C2=A0</div></div><di=
v style=3D"overflow-wrap: break-word;">I need a bit of help to understand h=
ow to run legacy prebuilt UHD versions from the<span class=3D"gmail-m_29689=
25698921149621m_-6828260562029000969Apple-converted-space">=C2=A0</span><a =
href=3D"http://files.ettus.com/binaries/uhd" rel=3D"noreferrer" target=3D"_=
blank">files.ettus.com/binaries/uhd</a>=C2=A0repository. =C2=A0<div><br></d=
iv><div>I would like to try various UHD versions to try to find a version t=
hat will run with an elderly (Rev 2) N210 with unknown firmware/fpga images=
 in it.=C2=A0 After downloading a legacy version, e.g., uhd_003.004.000-rel=
ease_Ubuntu-11.10-x86_64.deb, and clicking =E2=80=9Cinstall=E2=80=9D I am n=
ot understanding what I need to do next to actually run the version, as uhd=
_usrp_probe =E2=80=94version reports the version of UHD that I originally h=
ad installed, not the legacy version I intended to install. =C2=A0<div><br>=
</div><div>I am running Ubuntu 18.04, should I expect to be able to run the=
 legacy versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in the=
 example above ?=C2=A0</div><div><br></div><div>Clearly I=E2=80=99m missing=
 something fundamental, and likely simple, in my understanding about how to=
 use these prebuilt older versions.=C2=A0 I have had no problem building, i=
nstalling, and running UHD versions from source but I have never tried to r=
un a =E2=80=9Cprebuilt=E2=80=9D version before.=C2=A0</div><div><br></div><=
div>Joe</div></div></div></div></div></div></blockquote></div><br></div></d=
iv></div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b47ef2058878c9af--


--===============4221797055633204185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4221797055633204185==--

