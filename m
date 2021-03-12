Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E951339943
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 22:49:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A1D8383BEA
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 16:49:13 -0500 (EST)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5979438383A
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 16:48:14 -0500 (EST)
Received: by mail-qk1-f174.google.com with SMTP id t4so25976083qkp.1
        for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 13:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=26cmX9mI9+EGp9nJ8h00+ARXiZA7eUY1s5DInCDZGGs=;
        b=vgUTdYdrnI+tGPBIh5w2cm2CqEz+9v+785yX1XyUJIqHO+PwH/rTV9PRkcjOzeqZi8
         FNz8zErhvsR5pfS1155BXBP+IJ4Y5p4S8kvFvSYuTpNXVEQPhP1RG80mBxaB4HM+zfOX
         QlwXUd9C/S144Y2gfVWnX8HiY+AIWujxISew2dShDWIDOVtGIEcTubxIMnOWcJ8SZcDd
         +ITxAgAY3qq7X++rzVcO3gJexyKqvTnAH3sXf15KBa0/Vv9OoR+M1DpgLRAQ//jYi6VH
         TxBADct13/e6taoQXF5sYiZcFBG7QWfdQ/y+JALUVjSnViJYw1yBbAUsCuWgz2Gd8JPf
         BQsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=26cmX9mI9+EGp9nJ8h00+ARXiZA7eUY1s5DInCDZGGs=;
        b=dHhdUWA380VDNGXnkTM8IsL01+QywvBhepHbppvd+NCKUUVNJlIPBASCSws9DCYrMJ
         SfjBNHM9x/liI/qv/Vng9sf/qT0Y+itblAQ0ydSZiAOHPvKeVX5LXTfUmNHDBV61O7WV
         +cJpje528J7k4BbKAb/g8/VVhGCMSIetBz2hMPiQwdlR2Mx4Yge+krjCkPGn1hUjsBmn
         fCiaO6vXqlReeW7hKmKIaI3Z7JAc+8ku0AiS41pYYBDkSBMyvdLzVDO8Ur2xMmA87Zvd
         Yqv06L4mhSuCR1jNdcWL+QvTyyKeTsp1O/Wce7nhbnjT1NfsgIsEBxB5dSsBcAw70ZBf
         Cfzw==
X-Gm-Message-State: AOAM530ZIZ6MPfR2YT1JiiLxOQVIlRoLLcmP7yI2iWAkdnIKHmGecf8t
	6hy6zbPSTeTYcpwECGV3EtRH63siuGs=
X-Google-Smtp-Source: ABdhPJxmbQuXfmcWIYfOzKG6qBaE0zi4nrNVMgtIQEVoskArbaZMWkPU4FEJW6WmuMfGOnt7bV04vA==
X-Received: by 2002:a05:620a:13ec:: with SMTP id h12mr14239839qkl.460.1615585693701;
        Fri, 12 Mar 2021 13:48:13 -0800 (PST)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g6sm4599748qtg.91.2021.03.12.13.48.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 13:48:13 -0800 (PST)
Message-ID: <604BE19C.2030101@gmail.com>
Date: Fri, 12 Mar 2021 16:48:12 -0500
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
References: <CO6PR19MB480178E1CD5E40A830C3F4EEC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>,<EB7E7812-D2FC-4523-A64E-E645543F4006@gmail.com> <CO6PR19MB48011B4D233AE2727CB83A5DC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48011B4D233AE2727CB83A5DC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: Q6IBLV4G6LYGOG2U2DHYJDR4JCFXTA5P
X-Message-ID-Hash: Q6IBLV4G6LYGOG2U2DHYJDR4JCFXTA5P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Where do I find this call to change it.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6IBLV4G6LYGOG2U2DHYJDR4JCFXTA5P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1900444887008332364=="

This is a multi-part message in MIME format.
--===============1900444887008332364==
Content-Type: multipart/alternative;
 boundary="------------040807050303020905090809"

This is a multi-part message in MIME format.
--------------040807050303020905090809
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/12/2021 04:39 PM, Jerrid Plymale wrote:
> Ok, so what you're saying is I need to update Gnuradio to a newer=20
> version? The way I have my software setup is everything is installed=20
> into virtual environments. So when I initially started using the USRP,=20
> I created an environment that had UHD 3.15 and Gnuradio 3.8 installed.=20
> When I saw UHD 4.0 released, I created a new environment with UHD 4.0=20
> and  Gnuradio 3.8 installed. So do I need to update Gnuradio to 3.9?
>
> Best Regards,
>
> Jerrid
TBH, I'm not sure which versions of gr-uhd will prompt the message, that=20
is coming from the UHD library.

But, like I said, it's just a *WARNING*.  Things will still work just=20
fine.  It's basically saying the "in the future, this will stop working".

I'll note that in my current code base (GR 3.8.2,=20
55621a9709b219551b908e67ee88f6f7ad2593cb)  the recv_async_msg() call is=20
still tied
   to the underlying multi_usrp device, and NOT the streamer.

Perhaps the current maintainer of gr-uhd can comment on whether this is=20
fixed in a subsequent gr-uhd version (after GR 3.8.2)


>
> Sent from my Verizon, Samsung Galaxy smartphone
> Get Outlook for Android <https://aka.ms/ghei36>
>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, March 12, 2021 12:41:41 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Where do I find this call to change it.
> ok so this is likely a case of your gr-UHD assuming an older API for=20
> recv_async_msg.
>
> This is just a warning that eventually that older API will go away.
>
> Probably if you had totally up to date everything, or a UHD library=20
> that was of an earlier vintage that matched he-UHD, yiu wouldn=E2=80=99=
t get=20
> this message.
>
> Sent from my iPhone
>
>> On Mar 12, 2021, at 3:20 PM, Jerrid Plymale=20
>> <jerrid.plymale@canyon-us.com> wrote:
>>
>> =EF=BB=BF
>>
>> Hello Marcus,
>>
>> This is coming from a Gnuradio flowgraph that I created myself. It=E2=80=
=99s=20
>> got USRP Rx and Tx blocks, a block that takes samples of the signal=20
>> and preforms some DSP, and a bunch of GUI variable control and=20
>> variable display blocks.
>>
>> Best Regards,
>>
>> Jerrid
>>
>> *From:* Marcus D Leech <patchvonbraun@gmail.com>
>> *Sent:* Friday, March 12, 2021 12:17 PM
>> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
>> *Cc:* USRP-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] Where do I find this call to change it.
>>
>> I think we need more context.
>>
>> Is this from a program you write yourself?
>>
>> Someone else=E2=80=99s code?
>>
>> A Gnuradio flow graph? Your own? Someone else=E2=80=99s?
>>
>> Sent from my iPhone
>>
>>
>>
>>     On Mar 12, 2021, at 3:02 PM, Jerrid Plymale
>>     <jerrid.plymale@canyon-us.com
>>     <mailto:jerrid.plymale@canyon-us.com>> wrote:
>>
>>     =EF=BB=BF
>>
>>     Hello All,
>>
>>     Here is the warning message I am trying to solve:
>>
>>     [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is
>>     deprecated and can lead to unexpected behaviour. Prefer calling
>>     tx_stream::recv_async_msg().
>>
>>     I am trying to solve this warning message when I am running my
>>     USRP X310, but I have not had any luck finding the file I need to
>>     edit. Can anyone direct me on how to solve this problem?
>>
>>     Best Regards,
>>
>>     Jerrid Plymale
>>
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     <mailto:usrp-users@lists.ettus.com>
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>     <mailto:usrp-users-leave@lists.ettus.com>
>>


--------------040807050303020905090809
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/12/2021 04:39 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB48011B4D233AE2727CB83A5DC66F9@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0;
        font-family: sans-serif; font-size: 11pt; color: black; ">
        Ok, so what you're saying is I need to update Gnuradio to a
        newer version? The way I have my software setup is everything is
        installed into virtual environments. So when I initially started
        using the USRP, I created an environment that had UHD 3.15 and
        Gnuradio 3.8 installed. When I saw UHD 4.0 released, I created a
        new environment with UHD 4.0 and=C2=A0 Gnuradio 3.8 installed. So=
 do
        I need to update Gnuradio to 3.9?<br>
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0;
        font-family: sans-serif; font-size: 11pt; color: black; ">
        Best Regards,<br>
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0;
        font-family: sans-serif; font-size: 11pt; color: black; ">
        Jerrid<span id=3D"ms-outlook-android-cursor"></span><br>
      </div>
    </blockquote>
    TBH, I'm not sure which versions of gr-uhd will prompt the message,
    that is coming from the UHD library.<br>
    <br>
    But, like I said, it's just a *WARNING*.=C2=A0 Things will still work
    just fine.=C2=A0 It's basically saying the "in the future, this will =
stop
    working".=C2=A0 <br>
    <br>
    I'll note that in my current code base (GR 3.8.2,
    55621a9709b219551b908e67ee88f6f7ad2593cb)=C2=A0 the recv_async_msg() =
call
    is still tied<br>
    =C2=A0 to the underlying multi_usrp device, and NOT the streamer.<br>
    <br>
    Perhaps the current maintainer of gr-uhd can comment on whether this
    is fixed in a subsequent gr-uhd version (after GR 3.8.2)<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CO6PR19MB48011B4D233AE2727CB83A5DC66F9@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0;
        font-family: sans-serif; font-size: 11pt; color: black; ">
        <br>
      </div>
      <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0;
        font-family: sans-serif; font-size: 11pt; color: black; ">
        <span id=3D"OutlookSignature">
          <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: =
0;
            font-family: sans-serif; font-size: 11pt; color: black; ">
            Sent from my Verizon, Samsung Galaxy smartphone<br>
          </div>
          <div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: =
0;
            font-family: sans-serif; font-size: 11pt; color: black; ">
            Get <a moz-do-not-send=3D"true" href=3D"https://aka.ms/ghei36=
">Outlook
              for Android</a></div>
        </span><br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Mar=
cus
          D Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Friday, March 12, 2021 12:41:41 PM<br>
          <b>To:</b> Jerrid Plymale <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:jerrid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.c=
om&gt;</a><br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:USRP-users@li=
sts.ettus.com">&lt;USRP-users@lists.ettus.com&gt;</a><br>
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
              Plymale <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:j=
errid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a> wro=
te:<br>
              <br>
            </blockquote>
          </div>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">=EF=BB=BF
              <meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
              <style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}
span.x_EmailStyle20
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
              <div class=3D"x_WordSection1">
                <p class=3D"x_MsoNormal">Hello Marcus,</p>
                <p class=3D"x_MsoNormal">=C2=A0</p>
                <p class=3D"x_MsoNormal">This is coming from a Gnuradio
                  flowgraph that I created myself. It=E2=80=99s got USRP =
Rx and
                  Tx blocks, a block that takes samples of the signal
                  and preforms some DSP, and a bunch of GUI variable
                  control and variable display blocks.</p>
                <p class=3D"x_MsoNormal">=C2=A0</p>
                <p class=3D"x_MsoNormal">Best Regards,</p>
                <p class=3D"x_MsoNormal">=C2=A0</p>
                <p class=3D"x_MsoNormal">Jerrid </p>
                <p class=3D"x_MsoNormal">=C2=A0</p>
                <div>
                  <div style=3D"border:none; border-top:solid #E1E1E1
                    1.0pt; padding:3.0pt 0in 0in 0in">
                    <p class=3D"x_MsoNormal"><b>From:</b> Marcus D Leech
                      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:p=
atchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
                      <b>Sent:</b> Friday, March 12, 2021 12:17 PM<br>
                      <b>To:</b> Jerrid Plymale
                      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:j=
errid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                      <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><b=
r>
                      <b>Subject:</b> Re: [USRP-users] Where do I find
                      this call to change it.</p>
                  </div>
                </div>
                <p class=3D"x_MsoNormal">=C2=A0</p>
                <p class=3D"x_MsoNormal">I think we need more context.=C2=
=A0</p>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">Is this from a program you
                    write yourself?</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">Someone else=E2=80=99s code?</=
p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">A Gnuradio flow graph? Your
                    own? Someone else=E2=80=99s?</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                </div>
                <div>
                  <p class=3D"x_MsoNormal">=C2=A0</p>
                  <div>
                    <p class=3D"x_MsoNormal">Sent from my iPhone</p>
                  </div>
                  <div>
                    <p class=3D"x_MsoNormal"><br>
                      <br>
                    </p>
                    <blockquote style=3D"margin-top:5.0pt;
                      margin-bottom:5.0pt">
                      <p class=3D"x_MsoNormal"
                        style=3D"margin-bottom:12.0pt">On Mar 12, 2021, a=
t
                        3:02 PM, Jerrid Plymale &lt;<a
                          moz-do-not-send=3D"true"
                          href=3D"mailto:jerrid.plymale@canyon-us.com">je=
rrid.plymale@canyon-us.com</a>&gt;
                        wrote:</p>
                    </blockquote>
                  </div>
                  <blockquote style=3D"margin-top:5.0pt;
                    margin-bottom:5.0pt">
                    <div>
                      <p class=3D"x_MsoNormal">=EF=BB=BF </p>
                      <p class=3D"x_MsoNormal">Hello All,</p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal">Here is the warning messag=
e
                        I am trying to solve:</p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal"><span
                          style=3D"font-size:10.5pt;
                          font-family:&quot;Arial&quot;,sans-serif;
                          color:#1A1A1B; background:white">[WARNING]
                          [MULTI_USRP] Calling
                          multi_usrp::recv_async_msg() is deprecated and
                          can lead to unexpected behaviour. Prefer
                          calling tx_stream::recv_async_msg().</span></p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal">I am trying to solve this
                        warning message when I am running my USRP X310,
                        but I have not had any luck finding the file I
                        need to edit. Can anyone direct me on how to
                        solve this problem?</p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal">Best Regards,</p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal">Jerrid Plymale</p>
                      <p class=3D"x_MsoNormal">=C2=A0</p>
                      <p class=3D"x_MsoNormal">__________________________=
_____________________<br>
                        USRP-users mailing list -- <a
                          moz-do-not-send=3D"true"
                          href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a
                          moz-do-not-send=3D"true"
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
">
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
  </body>
</html>

--------------040807050303020905090809--

--===============1900444887008332364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1900444887008332364==--
