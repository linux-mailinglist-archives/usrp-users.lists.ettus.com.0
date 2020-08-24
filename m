Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB222506FC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Aug 2020 19:54:51 +0200 (CEST)
Received: from [::1] (port=55350 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAGgD-0007LA-G0; Mon, 24 Aug 2020 13:54:49 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:33799)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kAGg9-0007DU-Hu
 for usrp-users@lists.ettus.com; Mon, 24 Aug 2020 13:54:45 -0400
Received: by mail-oi1-f174.google.com with SMTP id z22so9049518oid.1
 for <usrp-users@lists.ettus.com>; Mon, 24 Aug 2020 10:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1rK85hYcqOPWRzVd9IB+k/ySI5kTAUrz4esXmVFBBzY=;
 b=VTOrfbhh8WKLWSXw86k627p0yGjSYRGav6lfk+hlUAAwcEhCmjDVO7RblmNBGRi5rh
 eINBdWyyqq59Ac5bgN4ElSaADcPXKfmQ8xTVGOvOXrhRiZjIKFKI52j9ysa6KbKjcaO0
 M5ePo4rVyQ97jNJIgQNyjxkvp5B8tBqezR8k1ygJ32u5Z3RkvMNJu70P+6eg58DsyxKz
 enrN0SxN1kGjpSrt5vyf3+Lmvq4BuzZd5XuoCGIFAaHzzdSZKnIsUb2StBeVZRjpOjoM
 aBGbBJgRtjykJCUAoAIFSgW936Rs7jgi5L6IZnCKW8sMl4DE4DH5MugTl/J4LFFE/qtc
 lMQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1rK85hYcqOPWRzVd9IB+k/ySI5kTAUrz4esXmVFBBzY=;
 b=OOKAqSfpZrVTDqulErOkf3PXwuqYqavn91nFsSPAUOdqZ/1wzCUEGf5VapRXZ53Iot
 9GC03nJ+TpiEwiqX78Z2zvoNiKXrH/JiDTf7hkS4/zwbzBZT+47x2lF1v/8X4dZk/bWI
 BeUjqYEHG2dTUPOXjL98eZ2KU2Au/t8XwJcbKJLBEJ2YOWrQIcvPowY4u2NJ/ZnRJNv8
 0jX04Nodtqdy8AJYY5Xy4H920v9t1togODLKTNw3GBEABe2jtkPl96+91TNrIgGaziw9
 ldtqs4DUu20v4Ly0DN5SOVaYgVhicSLY4/oAaLJu5FXdY+ZfYhn7ahUl+Urri8vAhSyP
 Sr4A==
X-Gm-Message-State: AOAM530cLk5MFGSI0dfUOO+fdI9hJ/JMWKrOpXgYNBmsh2QamjGoAC0u
 hcZVAlrW0jkd0/AM7FCHuc7rfojFqKKRrInAgrnIBQ==
X-Google-Smtp-Source: ABdhPJwBknSBxbSCDqnbTt/EWefZ3S/NLKjvAEWLlymbxngQY2WCb+zlAAwNbpxPc+1a2cAwjLnj6pxd6/xSbPfs/Xc=
X-Received: by 2002:a54:4019:: with SMTP id x25mr315176oie.124.1598291644601; 
 Mon, 24 Aug 2020 10:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
 <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
 <CAB__hTRbkX2HVfC5zVK7p17W9Q1keFoGMO7K9xC3GfaLVUjWFg@mail.gmail.com>
 <6ced606fafac42f28485978c0a087227@kongsberg.com>
 <CAB__hTQ4yy8Mrbgn4tn1hJj8GmeY4W5hi1sMSbuMhp3cAFELfg@mail.gmail.com>
 <1b04cfb3f883498198f57a793d8c55e7@kongsberg.com>
In-Reply-To: <1b04cfb3f883498198f57a793d8c55e7@kongsberg.com>
Date: Mon, 24 Aug 2020 13:53:53 -0400
Message-ID: <CAB__hTTVvDbo-A5oS3i85y=BdjYVD=Dj9DEHNLk-myhLedxJkg@mail.gmail.com>
To: Andreas.Bertheussen@kongsberg.com
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2416546479065041129=="
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

--===============2416546479065041129==
Content-Type: multipart/alternative; boundary="000000000000b99bb205ada3452e"

--000000000000b99bb205ada3452e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,
A few comments:

   - I downloaded, compiled and ran your example and got similar results to
   you
   - I ran the following Ettus stock program and saw similar bad behavior:
   benchmark_rate --args=3D"addr0=3D192.168.43.2,addr1=3D192.168.51.2" --tx=
_rate 5e6
   --tx_channels=3D"0,2"
   - For this example, I should have had "--ref=3Dexternal -pps=3Dexternal"
      also, but since I did not have an external reference handy, I ran wit=
h
      internal reference and so I frequently got a warning about time
deviation.
      But, this is not really important I think.
      - The key issue is that the LEDs should always be the first channel
      on the two devices but that is not what happens.  The Tx LEDs that li=
ght
      are somewhat random (but always 2 of them) from run to run
      - See if you can verify this on your end while using an external
      reference/PPS and adding the corresponding command line arguments.

Assuming that you can duplicate this with benchmark_rate as indicated
above, then this takes your software out of the equation.  I suggest
contacting Ettus and asking them to take a look.  If this is a bug in UHD
as it seems, it is a pretty significant one that they should fix.

Rob


On Fri, Aug 21, 2020 at 2:45 PM <Andreas.Bertheussen@kongsberg.com> wrote:

> Thanks for pointing that out Rob.
>
>
>
> I have created a std::vector<size_t> enabled_channels =3D {0, 2}. I also
> changed so that those channel numbers (0 and 2) are used to tune the
> radios, adjust gain and check for locked LO. Code is attached.
>
>
>
> Now I still have similar issues and I observe 3 cases:
>
> =C2=B7         60% of the time: Outputs A and B on first X310 are only on=
es
> enabled. Signal of first buffer is present on A (correct), B output is
> quiet.
>
> =C2=B7         35% of the time: Outputs A and B on second X310 are only o=
nes
> enabled. Signal of second buffer is present on A (correct(?)), B output i=
s
> quiet.
>
> =C2=B7         5% of the time: Outputs A on both X310s are the only ones
> enabled. Signal of first buffer on the first X310 A output, signal of
> second buffer on the second X310 A output. This is expected behaviour.
>
>
>
> With respect to the channel mapping for the buffers passed to send(), I=
=E2=80=99m
> not quite sure. My understanding is that if I have only two channels
> selected when creating my tx streamer, for instance =E2=80=A6args.channel=
s =3D {0,2},
> then the buffer vector passed to send() must be of size 2, and first buff=
er
> gets mapped to channel 0, and second buffer to channel 2.
>
>
>
> To sum it up, I now have the correct signal appear at the correct output
> whenever it is enabled, and that the issue is that incorrect outputs get
> enabled.
>
>
>
> Regards,
>
> Andreas.
>
>
>
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* 21. august 2020 18:21
> *To:* Bertheussen, Andreas <Andreas.Bertheussen@kongsberg.com>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Issues with multi-usrp and UHD
>
>
>
> Hi Andreas,
>
> When you set the subdev spec to "A:0 B:0" for both devices as you do in
> this case, UHD now has 4 channels where channels 0/1 are on device 1 and
> 2/3 are o{n device 2. So, your streaming command is correct in choosing
> {0,2} as the desired stream channels. But other parts of your code are no=
t
> because you have "num_chan" set to 2 and so you are only manipulating
> channels 0/1 with your other commands.  Perhaps you could set a vector at
> the top such as:
>
>   std::vector<size_t> my_chan =3D {0,2};
>
> and then you could have num_chan=3D2 (as is now) but then you always need=
 to
> use "my_chan[chan_index]" when providing a channel index to UHD (such as
> tune commands or gain commands). This "my_chan" vector could be used
> directly also in the stream args.
>
>
>
> I don't know if this will fix your overall issue, but the channel indexin=
g
> needs to be modified to match what UHD is expecting.
>
> Rob
>
>
>
>
>
> On Fri, Aug 21, 2020 at 5:39 AM <Andreas.Bertheussen@kongsberg.com> wrote=
:
>
> > Can you resend the source code for the first case you describe below
> along with command line?
>
> I have attached the code for a channel mapping of (0,2) in siggen.cc. I
> also include my CMakeLists file.
>
> Program is run without arguments; ./siggen
>
> Attached output_case_1.txt shows the program output when outputs A and B
> on first X310 get enabled, and I do observe signals on those outputs.
> Attached output_case_2.txt shows the program output when outputs A and B
> on second X310 get enabled, but I _do not_ observe signals on those outpu=
ts.
>
> Looking back on the mailing list this also seems similar to the "issue
> about subdev spec" posted by Damon qi, earlier this month.
>
> Regards,
> Andreas.
>
> ________________________________
>
> CONFIDENTIALITY
> This e-mail and any attachment contain KONGSBERG information which may be
> proprietary, confidential or subject to export regulations, and is only
> meant for the intended recipient(s). Any disclosure, copying, distributio=
n
> or use is prohibited, if not otherwise explicitly agreed with KONGSBERG. =
If
> received in error, please delete it immediately from your system and noti=
fy
> the sender properly.
>
>

--000000000000b99bb205ada3452e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andreas,</div><div>A few comments:</div><div><ul><=
li>I downloaded, compiled and ran your example and got similar results to y=
ou</li><li>I ran the following Ettus stock program and saw similar bad beha=
vior:=C2=A0 benchmark_rate --args=3D&quot;addr0=3D192.168.43.2,addr1=3D192.=
168.51.2&quot; --tx_rate 5e6 --tx_channels=3D&quot;0,2&quot;<br></li><ul><l=
i>For this example, I should have had &quot;--ref=3Dexternal -pps=3Dexterna=
l&quot; also, but since I did not have an external reference handy, I ran w=
ith internal reference and so I frequently got a warning about time deviati=
on. But, this is not really important I think.=C2=A0=C2=A0</li><li>The key =
issue is that the LEDs should always be the first channel on the two device=
s but that is not what=C2=A0happens.=C2=A0 The Tx LEDs that light are somew=
hat random (but always 2 of them) from run to run</li><li>See if you can ve=
rify this on your end while using an external reference/PPS and adding the =
corresponding command line arguments.</li></ul></ul><div>Assuming that you =
can duplicate this with benchmark_rate as indicated above, then this takes =
your software out of the equation.=C2=A0 I suggest contacting Ettus and ask=
ing them to take a look.=C2=A0 If this is a bug in UHD as it seems, it is a=
 pretty significant one that they should fix.</div></div><div><br></div><di=
v>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Aug 21, 2020 at 2:45 PM &lt;<a href=3D"ma=
ilto:Andreas.Bertheussen@kongsberg.com">Andreas.Bertheussen@kongsberg.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"NO-BOK">
<div class=3D"gmail-m_5110629281059098521WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Thanks for pointing that out =
Rob.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">I have created a std::vector&=
lt;size_t&gt; enabled_channels =3D {0, 2}. I also changed so that those cha=
nnel numbers (0 and 2)
 are used to tune the radios, adjust gain and check for locked LO. Code is =
attached.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Now I still have similar issu=
es and I observe 3 cases:<u></u><u></u></span></p>
<p class=3D"gmail-m_5110629281059098521MsoListParagraph"><u></u><span lang=
=3D"EN-GB" style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73,125)"=
><span>=C2=B7<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-GB" style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)">60% of the time: Outputs=
 A and B on first X310 are only ones enabled. Signal of first buffer is pre=
sent on A
 (correct), B output is quiet.<u></u><u></u></span></p>
<p class=3D"gmail-m_5110629281059098521MsoListParagraph"><u></u><span lang=
=3D"EN-GB" style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73,125)"=
><span>=C2=B7<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-GB" style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)">35% of the time: Outputs=
 A and B on second X310 are only ones enabled. Signal of second buffer is p=
resent on
 A (correct(?)), B output is quiet.<u></u><u></u></span></p>
<p class=3D"gmail-m_5110629281059098521MsoListParagraph"><u></u><span lang=
=3D"EN-GB" style=3D"font-size:11pt;font-family:Symbol;color:rgb(31,73,125)"=
><span>=C2=B7<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-GB" style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)">5% of the time: Outputs =
A on both X310s are the only ones enabled. Signal of first buffer on the fi=
rst X310
 A output, signal of second buffer on the second X310 A output. This is exp=
ected behaviour.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">With respect to the channel m=
apping for the buffers passed to send(), I=E2=80=99m not quite sure. My und=
erstanding is that if
 I have only two channels selected when creating my tx streamer, for instan=
ce =E2=80=A6args.channels =3D {0,2}, then the buffer vector passed to send(=
) must be of size 2, and first buffer gets mapped to channel 0, and second =
buffer to channel 2.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">To sum it up, I now have the =
correct signal appear at the correct output whenever it is enabled, and tha=
t the issue is
 that incorrect outputs get enabled.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Regards,<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Andreas.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">From:</span></b><span lang=3D"EN-US" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif"> Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
<br>
<b>Sent:</b> 21. august 2020 18:21<br>
<b>To:</b> Bertheussen, Andreas &lt;<a href=3D"mailto:Andreas.Bertheussen@k=
ongsberg.com" target=3D"_blank">Andreas.Bertheussen@kongsberg.com</a>&gt;<b=
r>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Issues with multi-usrp and UHD<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Andreas,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">When you set the subdev spec to &quot;A:0 B:0&quot; =
for both devices as you do in this case, UHD now has 4 channels where chann=
els 0/1 are on device 1 and 2/3 are o{n device 2. So, your streaming comman=
d is correct in choosing {0,2} as the desired
 stream channels. But other parts of your code are not because you have &qu=
ot;num_chan&quot; set to 2 and so you are only manipulating channels 0/1 wi=
th your other commands.=C2=A0 Perhaps you could set a vector at the top suc=
h as:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 std::vector&lt;size_t&gt; my_chan =3D {0,2};<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">and then you could have num_chan=3D2 (as is now) but=
 then you always need to use &quot;my_chan[chan_index]&quot; when providing=
 a channel index to UHD (such as tune commands or gain commands). This &quo=
t;my_chan&quot; vector could be used directly also in the
 stream args.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I don&#39;t know if this will fix your overall issue=
, but the channel indexing needs to be modified to match what UHD is expect=
ing.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Fri, Aug 21, 2020 at 5:39 AM &lt;<a href=3D"mailt=
o:Andreas.Bertheussen@kongsberg.com" target=3D"_blank">Andreas.Bertheussen@=
kongsberg.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<p class=3D"MsoNormal">&gt; Can you resend the source code for the first ca=
se you describe below along with command line?<br>
<br>
I have attached the code for a channel mapping of (0,2) in siggen.cc. I als=
o include my CMakeLists file.<br>
<br>
Program is run without arguments; ./siggen<br>
<br>
Attached output_case_1.txt shows the program output when outputs A and B on=
 first X310 get enabled, and I do observe signals on those outputs.<br>
Attached output_case_2.txt shows the program output when outputs A and B on=
 second X310 get enabled, but I _do not_ observe signals on those outputs.<=
br>
<br>
Looking back on the mailing list this also seems similar to the &quot;issue=
 about subdev spec&quot; posted by Damon qi, earlier this month.<br>
<br>
Regards,<br>
Andreas.<br>
<br>
________________________________<br>
<br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise
 explicitly agreed with KONGSBERG. If received in error, please delete it i=
mmediately from your system and notify the sender properly.<u></u><u></u></=
p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000b99bb205ada3452e--


--===============2416546479065041129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2416546479065041129==--

