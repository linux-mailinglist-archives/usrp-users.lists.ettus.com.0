Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0F2339F23
	for <lists+usrp-users@lfdr.de>; Sat, 13 Mar 2021 17:39:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4192383965
	for <lists+usrp-users@lfdr.de>; Sat, 13 Mar 2021 11:39:13 -0500 (EST)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C25623832A3
	for <USRP-users@lists.ettus.com>; Sat, 13 Mar 2021 11:38:10 -0500 (EST)
Received: by mail-ej1-f48.google.com with SMTP id bm21so59221228ejb.4
        for <USRP-users@lists.ettus.com>; Sat, 13 Mar 2021 08:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CQvt1lte2O3ES9SBIfNIfNyMh+A4qWuVsxL7DogCsCM=;
        b=gJJ1IfMOrmQqH9TinX0SvHNOaK5PYZJEKbGFZu9RtWbCcEKkAQ/5RR1q1hW3/+Zjcz
         22zLB70yOwp/+46H8Zv+2lchZ9+1VccAlxXaVnJqBOR0wUdBCRStTVWAQSXcYrcZ+mkR
         DqL09MRXjNUl9yhMO5p+GQHrYGCxVkLLCw3VkQQZ4prTmVYj7ySjvgNf1FRTHNUrUzdd
         3FnAHRtkcv5xrZ31fo3xV/KwnVAmURC1FeUL+0zh1WMaah/hX9MkqSWi9+R2RS0PvHM3
         jEnqUa+1PFc4n1s2W9lm27S0g/dbVRCKWmoYxpdDcUbnrt2v74X7aLAQWyPBzXrgsm8d
         2OKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CQvt1lte2O3ES9SBIfNIfNyMh+A4qWuVsxL7DogCsCM=;
        b=AXMMVeiLmsy1JHXeEYJ0vJy1EoaTKabFG3rPgefW7OD/U5G5L5UyTbC0A5IONiIa2L
         rYKX0L680Td1+ZSw5i7SlgqOyYE79EY25cbVBkd5GlsnogRzk26PpZK8lF2i7LNWUd9M
         sdj1eBqnYUEEfXfK4uvgRMfMct29UgZ3EkZaXAD3s+vPNLZrniWfMp4xDpa4PZxdr56u
         pBmSb+o7yHZgRlmL0+4VKYyfU1cElqG+JDujkzkOD2+WVrX4ERCPgrs0OFcxjd3InkZU
         0OZ/3J/XrGEpLUeoE3ykj2D7m0dhLsXqjI7J+xgp73X18ThHHmfASHTLOX/q5bPZB0RM
         Wbzg==
X-Gm-Message-State: AOAM530/WwG+vkg/7e1w7rcBlB0f6czpoyzMvsYcPCkEyG6UhqgRPcHK
	nrUmBv7XUD+vTZW8wy0mctE5XqXvM8W0mSZouWiJS1kN
X-Google-Smtp-Source: ABdhPJzlAjplS+2UYVuIaJLnKR+aSTgxro1j2koDWjxeiF4H8pyajFZn1zu9WW8a2fALjh6FaXTOenbYRCkvj7rM8UA=
X-Received: by 2002:a17:906:3f87:: with SMTP id b7mr14626723ejj.139.1615653489804;
 Sat, 13 Mar 2021 08:38:09 -0800 (PST)
MIME-Version: 1.0
References: <CO6PR19MB480178E1CD5E40A830C3F4EEC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
 <EB7E7812-D2FC-4523-A64E-E645543F4006@gmail.com> <CO6PR19MB48011B4D233AE2727CB83A5DC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
 <604BE19C.2030101@gmail.com>
In-Reply-To: <604BE19C.2030101@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Sat, 13 Mar 2021 17:37:56 +0100
Message-ID: <CAFOi1A7KR184kiuP3kS8kSN4Dsx7LTJ3q+4J_ejkr4-+70F3tA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LTI47JBHTFPVUGFRZHZTXTVKXCEUVGCN
X-Message-ID-Hash: LTI47JBHTFPVUGFRZHZTXTVKXCEUVGCN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jerrid Plymale <jerrid.plymale@canyon-us.com>, "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Where do I find this call to change it.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LTI47JBHTFPVUGFRZHZTXTVKXCEUVGCN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8993960291580810995=="

--===============8993960291580810995==
Content-Type: multipart/alternative; boundary="0000000000005717f605bd6da4cf"

--0000000000005717f605bd6da4cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's either fixed or in review. At least on GNU Radio master branch.

On Fri, 12 Mar 2021, 22:48 Marcus D. Leech, <patchvonbraun@gmail.com> wrote=
:

> On 03/12/2021 04:39 PM, Jerrid Plymale wrote:
>
> Ok, so what you're saying is I need to update Gnuradio to a newer version=
?
> The way I have my software setup is everything is installed into virtual
> environments. So when I initially started using the USRP, I created an
> environment that had UHD 3.15 and Gnuradio 3.8 installed. When I saw UHD
> 4.0 released, I created a new environment with UHD 4.0 and  Gnuradio 3.8
> installed. So do I need to update Gnuradio to 3.9?
>
> Best Regards,
>
> Jerrid
>
> TBH, I'm not sure which versions of gr-uhd will prompt the message, that
> is coming from the UHD library.
>
> But, like I said, it's just a *WARNING*.  Things will still work just
> fine.  It's basically saying the "in the future, this will stop working".
>
> I'll note that in my current code base (GR 3.8.2,
> 55621a9709b219551b908e67ee88f6f7ad2593cb)  the recv_async_msg() call is
> still tied
>   to the underlying multi_usrp device, and NOT the streamer.
>
> Perhaps the current maintainer of gr-uhd can comment on whether this is
> fixed in a subsequent gr-uhd version (after GR 3.8.2)
>
>
>
> Sent from my Verizon, Samsung Galaxy smartphone
> Get Outlook for Android <https://aka.ms/ghei36>
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com=
>
> *Sent:* Friday, March 12, 2021 12:41:41 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> <USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Where do I find this call to change it.
>
> ok so this is likely a case of your gr-UHD assuming an older API for
> recv_async_msg.
>
> This is just a warning that eventually that older API will go away.
>
> Probably if you had totally up to date everything, or a UHD library that
> was of an earlier vintage that matched he-UHD, yiu wouldn=E2=80=99t get t=
his
> message.
>
> Sent from my iPhone
>
> On Mar 12, 2021, at 3:20 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com=
>
> <jerrid.plymale@canyon-us.com> wrote:
>
> =EF=BB=BF
>
> Hello Marcus,
>
>
>
> This is coming from a Gnuradio flowgraph that I created myself. It=E2=80=
=99s got
> USRP Rx and Tx blocks, a block that takes samples of the signal and
> preforms some DSP, and a bunch of GUI variable control and variable displ=
ay
> blocks.
>
>
>
> Best Regards,
>
>
>
> Jerrid
>
>
>
> *From:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com=
>
> *Sent:* Friday, March 12, 2021 12:17 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Where do I find this call to change it.
>
>
>
> I think we need more context.
>
>
>
> Is this from a program you write yourself?
>
>
>
> Someone else=E2=80=99s code?
>
>
>
> A Gnuradio flow graph? Your own? Someone else=E2=80=99s?
>
>
>
>
>
>
>
> Sent from my iPhone
>
>
>
> On Mar 12, 2021, at 3:02 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com=
>
> wrote:
>
> =EF=BB=BF
>
> Hello All,
>
>
>
> Here is the warning message I am trying to solve:
>
>
>
> [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated
> and can lead to unexpected behaviour. Prefer calling
> tx_stream::recv_async_msg().
>
>
>
> I am trying to solve this warning message when I am running my USRP X310,
> but I have not had any luck finding the file I need to edit. Can anyone
> direct me on how to solve this problem?
>
>
>
> Best Regards,
>
>
>
> Jerrid Plymale
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005717f605bd6da4cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It&#39;s either fixed or in review. At least on GNU Radio=
 master branch.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 12 Mar 2021, 22:48 Marcus D. Leech, &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 03/12/2021 04:39 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-fami=
ly:sans-serif;font-size:11pt;color:black">
        Ok, so what you&#39;re saying is I need to update Gnuradio to a
        newer version? The way I have my software setup is everything is
        installed into virtual environments. So when I initially started
        using the USRP, I created an environment that had UHD 3.15 and
        Gnuradio 3.8 installed. When I saw UHD 4.0 released, I created a
        new environment with UHD 4.0 and=C2=A0 Gnuradio 3.8 installed. So d=
o
        I need to update Gnuradio to 3.9?<br>
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-fami=
ly:sans-serif;font-size:11pt;color:black">
        Best Regards,<br>
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-fami=
ly:sans-serif;font-size:11pt;color:black">
        Jerrid<span id=3D"m_703571718976381159ms-outlook-android-cursor"></=
span><br>
      </div>
    </blockquote>
    TBH, I&#39;m not sure which versions of gr-uhd will prompt the message,
    that is coming from the UHD library.<br>
    <br>
    But, like I said, it&#39;s just a *WARNING*.=C2=A0 Things will still wo=
rk
    just fine.=C2=A0 It&#39;s basically saying the &quot;in the future, thi=
s will stop
    working&quot;.=C2=A0 <br>
    <br>
    I&#39;ll note that in my current code base (GR 3.8.2,
    55621a9709b219551b908e67ee88f6f7ad2593cb)=C2=A0 the recv_async_msg() ca=
ll
    is still tied<br>
    =C2=A0 to the underlying multi_usrp device, and NOT the streamer.<br>
    <br>
    Perhaps the current maintainer of gr-uhd can comment on whether this
    is fixed in a subsequent gr-uhd version (after GR 3.8.2)<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-fami=
ly:sans-serif;font-size:11pt;color:black">
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-fami=
ly:sans-serif;font-size:11pt;color:black">
        <span id=3D"m_703571718976381159OutlookSignature">
          <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-=
family:sans-serif;font-size:11pt;color:black">
            Sent from my Verizon, Samsung Galaxy smartphone<br>
          </div>
          <div dir=3D"auto" style=3D"direction:ltr;margin:0;padding:0;font-=
family:sans-serif;font-size:11pt;color:black">
            Get <a href=3D"https://aka.ms/ghei36" target=3D"_blank" rel=3D"=
noreferrer">Outlook
              for Android</a></div>
        </span><br>
      </div>
      <hr style=3D"display:inline-block;width:98%">
      <div id=3D"m_703571718976381159divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:=
</b> Marcus
          D Leech <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Friday, March 12, 2021 12:41:41 PM<br>
          <b>To:</b> Jerrid Plymale <a href=3D"mailto:jerrid.plymale@canyon=
-us.com" target=3D"_blank" rel=3D"noreferrer">&lt;jerrid.plymale@canyon-us.=
com&gt;</a><br>
          <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettus.com</a>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" r=
el=3D"noreferrer">&lt;USRP-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Where do I find this call to
          change it.</font>
        <div>=C2=A0</div>
      </div>
      <div dir=3D"auto">ok so this is likely a case of your gr-UHD
        assuming an older API for recv_async_msg.=C2=A0
        <div><br>
        </div>
        <div>This is just a warning that eventually that older API will
          go away.=C2=A0</div>
        <div><br>
        </div>
        <div>Probably if you had totally up to date everything, or a UHD
          library that was of an earlier vintage that matched he-UHD,
          yiu wouldn=E2=80=99t get this message.=C2=A0<br>
          <br>
          <div dir=3D"ltr">Sent from my iPhone</div>
          <div dir=3D"ltr"><br>
            <blockquote type=3D"cite">On Mar 12, 2021, at 3:20 PM, Jerrid
              Plymale <a href=3D"mailto:jerrid.plymale@canyon-us.com" targe=
t=3D"_blank" rel=3D"noreferrer">&lt;jerrid.plymale@canyon-us.com&gt;</a> wr=
ote:<br>
              <br>
            </blockquote>
          </div>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">=EF=BB=BF
             =20
             =20
              <div>
                <p>Hello Marcus,</p>
                <p>=C2=A0</p>
                <p>This is coming from a Gnuradio
                  flowgraph that I created myself. It=E2=80=99s got USRP Rx=
 and
                  Tx blocks, a block that takes samples of the signal
                  and preforms some DSP, and a bunch of GUI variable
                  control and variable display blocks.</p>
                <p>=C2=A0</p>
                <p>Best Regards,</p>
                <p>=C2=A0</p>
                <p>Jerrid </p>
                <p>=C2=A0</p>
                <div>
                  <div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;=
padding:3.0pt 0in 0in 0in">
                    <p><b>From:</b> Marcus D Leech
                      <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"=
_blank" rel=3D"noreferrer">&lt;patchvonbraun@gmail.com&gt;</a> <br>
                      <b>Sent:</b> Friday, March 12, 2021 12:17 PM<br>
                      <b>To:</b> Jerrid Plymale
                      <a href=3D"mailto:jerrid.plymale@canyon-us.com" targe=
t=3D"_blank" rel=3D"noreferrer">&lt;jerrid.plymale@canyon-us.com&gt;</a><br=
>
                      <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettus.com</a><br>
                      <b>Subject:</b> Re: [USRP-users] Where do I find
                      this call to change it.</p>
                  </div>
                </div>
                <p>=C2=A0</p>
                <p>I think we need more context.=C2=A0</p>
                <div>
                  <p>=C2=A0</p>
                </div>
                <div>
                  <p>Is this from a program you
                    write yourself?</p>
                </div>
                <div>
                  <p>=C2=A0</p>
                </div>
                <div>
                  <p>Someone else=E2=80=99s code?</p>
                </div>
                <div>
                  <p>=C2=A0</p>
                </div>
                <div>
                  <p>A Gnuradio flow graph? Your
                    own? Someone else=E2=80=99s?</p>
                </div>
                <div>
                  <p>=C2=A0</p>
                </div>
                <div>
                  <p>=C2=A0</p>
                </div>
                <div>
                  <p>=C2=A0</p>
                  <div>
                    <p>Sent from my iPhone</p>
                  </div>
                  <div>
                    <p><br>
                      <br>
                    </p>
                    <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0=
pt">
                      <p style=3D"margin-bottom:12.0pt">On Mar 12, 2021, at
                        3:02 PM, Jerrid Plymale &lt;<a href=3D"mailto:jerri=
d.plymale@canyon-us.com" target=3D"_blank" rel=3D"noreferrer">jerrid.plymal=
e@canyon-us.com</a>&gt;
                        wrote:</p>
                    </blockquote>
                  </div>
                  <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                    <div>
                      <p>=EF=BB=BF </p>
                      <p>Hello All,</p>
                      <p>=C2=A0</p>
                      <p>Here is the warning message
                        I am trying to solve:</p>
                      <p>=C2=A0</p>
                      <p><span style=3D"font-size:10.5pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#1a1a1b;background:white">[WARNING]
                          [MULTI_USRP] Calling
                          multi_usrp::recv_async_msg() is deprecated and
                          can lead to unexpected behaviour. Prefer
                          calling tx_stream::recv_async_msg().</span></p>
                      <p>=C2=A0</p>
                      <p>I am trying to solve this
                        warning message when I am running my USRP X310,
                        but I have not had any luck finding the file I
                        need to edit. Can anyone direct me on how to
                        solve this problem?</p>
                      <p>=C2=A0</p>
                      <p>Best Regards,</p>
                      <p>=C2=A0</p>
                      <p>Jerrid Plymale</p>
                      <p>=C2=A0</p>
                      <p>_______________________________________________<br=
>
                        USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists=
.ettus.com</a><br>
                        To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">
                          usrp-users-leave@lists.ettus.com</a></p>
                    </div>
                  </blockquote>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--0000000000005717f605bd6da4cf--

--===============8993960291580810995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8993960291580810995==--
