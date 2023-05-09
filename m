Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B38706FCC30
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 19:00:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA7653845BA
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 13:00:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683651643; bh=Ap1wUApGkmkfxf9k2M1BbNt1Af/xP4eH60sXEBhPZEo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qEVU/5974uQS6/lpqc6/YbJcZWcAdigADYj9S3kXBVgt7jkBjkl4m46BwDhQU3WmN
	 cuFBi24QvcDQUmBNLHK1QvUMXtQ5Lft5LDUfw45LXN/l9zzcU3R3/q0ev+5wACqi9J
	 XGqzcZJ8MQIRzEFJnlqJCyplh/8flUAaP0HDogIgVIKdlVgHOlp/0ElJhfNlo4hrXu
	 6VQj9qbXidUO9MBmyWTlv4ZF6FfuLUcs0Wdnc0eUEu3pDtGQ3s0MJkEUme5/zjMs6j
	 IvUZgGELshUjvKRzlmdK4ErmOg7UjiyD5GXgj2gXA4HZYyFHtiamq90X+KKPNmw1uf
	 6dBh1MDmNJqZw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D4F93846EC
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 12:59:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AyU/L+xx";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-61af33bdf1dso29857156d6.2
        for <usrp-users@lists.ettus.com>; Tue, 09 May 2023 09:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683651570; x=1686243570;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQ5z6MrZFN0gaSVGz9Qd+51yJZKeBJT9OZZRAF/AoIk=;
        b=AyU/L+xx9wJWOkd27lI6HJDZHUv81lfDtNBQ54agXRQjHpXfpRyacskPvOz00wupYK
         rYdlbufcdlkkshKy3NJtWeKgyBR9/QIFddOoii5xAi9RfLGDSL3lufaCdxsnX6dEa+JU
         5nRvExlehR2yYsVF93qN+ZrFmfh8SqyscrtNXppHq+KkBFqVAFXzy1jHqZJ+ksHfw3G6
         fGOXfGsKXZmUo2kHysdJgGda3M497xMsR/mP+Ebsdif8ESe0zxg2PM7mxpatIHiWDsYE
         133HPs8puj6effzX75Md4l10mQuITe4EMn4WgdOjRvikjaVyxMXB6uQDdGn1sp5S4qv6
         slvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683651570; x=1686243570;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hQ5z6MrZFN0gaSVGz9Qd+51yJZKeBJT9OZZRAF/AoIk=;
        b=ddAHb1FTzHZeSihmCpm2lsrybjgLw2qjY+l+U736VLqAHUrki4rKbagS5E/zxiogYJ
         ArhXYvICEFymobD2uQ+DN+OpVKfabWV2tKp/N5uVX/7P27UE3LQkBQpJM0MY7RnEgUX9
         Y046k48nK6v8g1dyLMim+K9b36rwBqD0HNnEnjGwwMA1wKRJMzB/TIBk97Qvy0B3N/xS
         6AfjCOBibNU8Bm5e5KDSfJNiUiP53xSC3sl8ihBjmOywmXN1oC9ikkd5PLGf4vhQGco8
         2+pyu127H9MeiCWG1iW9jOiyLrkZ5scD9zPpYqcp3h0qDvdZq30Xz6M4tcxqJ2V6/rue
         13Xw==
X-Gm-Message-State: AC+VfDydfBCaCCQFEtrKr2eukCREP7aoAO3cI4FGkfPnpR1p1i0PN2vO
	owuZyKYTVD0Cxl7CeOc2IhI=
X-Google-Smtp-Source: ACHHUZ5VN2+/WeThafa8JXsCQ8XQa6n1v9wNKS5ZjBbrFCLRw2KMdrINM3vSAkU6Di19Ve/5r90DOg==
X-Received: by 2002:a05:6214:226d:b0:616:5a74:4574 with SMTP id gs13-20020a056214226d00b006165a744574mr23205696qvb.11.1683651569880;
        Tue, 09 May 2023 09:59:29 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k15-20020a0cf28f000000b0061af68f2eb0sm911345qvl.14.2023.05.09.09.59.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 09:59:29 -0700 (PDT)
Message-ID: <fbf2498a-a65f-4f2a-d58b-12481223f9c8@gmail.com>
Date: Tue, 9 May 2023 12:59:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: David Raeman <david@SynopticEngineering.com>, zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
 <1556054227.3356110.1683649305159@mail.yahoo.com>
 <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com>
 <494641635.3380849.1683651178051@mail.yahoo.com>
 <BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 2EOC47PSEQYJSMNYDCX3C47OVI6LX4GR
X-Message-ID-Hash: 2EOC47PSEQYJSMNYDCX3C47OVI6LX4GR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2EOC47PSEQYJSMNYDCX3C47OVI6LX4GR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3106129768469948251=="

This is a multi-part message in MIME format.
--===============3106129768469948251==
Content-Type: multipart/alternative;
 boundary="------------S7h7a07FGUQPWOi6qG0PUlZz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------S7h7a07FGUQPWOi6qG0PUlZz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/05/2023 12:58, David Raeman wrote:
>
> Note that because you are running these commands via sudo, the results=20
> may be in root=E2=80=99s home directory.
>
Thanks for picking up on that!=C2=A0=C2=A0=C2=A0 Yeah, there's ZERO reaso=
n to run as=20
root for this stuff.


> *From:* zhou via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Tuesday, May 9, 2023 12:53 PM
> *To:* usrp-users@lists.ettus.com; Marcus D. Leech=20
> <patchvonbraun@gmail.com>
> *Subject:* [USRP-users] Re: Can't find calibration file for X310
>
> Thanks for your quick response Marcus.
>
> My Linux is server version of Ubuntu 22.04.
>
> The calibration commands I used are:
>
> sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2=
"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
>
> sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2=
"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
>
> sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
>
> sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
>
> sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"A:0"
>
> sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=20
> --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step=20
> 5e6 --subdev=3D"B:0"
>
> After running these commands, it showed that calibration was successful=
:
>
> =C2=A0The calibration was successful!!! :-)
>
> What other place can the .cal files be saved in?
>
> Thanks again.
>
> On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
> On 09/05/2023 12:21, zhou via USRP-users wrote:
>
> Hi,
>
> I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find=20
> the expected .cal file under ${HOME}/.local/share/uhd/cal/. Actually,=20
> there is no=C2=A0${HOME}/.local/share/uhd/ directory.
>
> What can be wrong?
>
> Thanks for any help,
>
> Hongwei
>
>
> It could be that your desktop environment stores local config and data=20
> files in another place.
>
> What commands did you use to create the cal files?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------S7h7a07FGUQPWOi6qG0PUlZz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/05/2023 12:58, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Note that because you are running these
          commands via sudo, the results may be in root=E2=80=99s home
          directory.</p>
      </div>
    </blockquote>
    Thanks for picking up on that!=C2=A0=C2=A0=C2=A0 Yeah, there's ZERO r=
eason to run
    as root for this stuff.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0i=
n
          0in 0in 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> zhou via USRP-users
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-us=
ers@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, May 9, 2023 12:53 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>; Marcus=
 D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Subject:</b> [USRP-users] Re: Can't find calibration
                file for X310<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif">Thanks
                  for your quick response Marcus.<o:p></o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif">My
                  Linux is server version of Ubuntu 22.04.=C2=A0<o:p></o:=
p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif">The
                  calibration commands I used are:<o:p></o:p></span></p>
            </div>
            <div>
              <div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_tx_dc_offset=C2=A0 --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_tx_dc_offset=C2=A0 --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Helveti=
ca&quot;,sans-serif">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"<o:p></o:p></span></p>
                </div>
              </div>
              <div>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:10.0pt;font-family:&quot;Helvetica=
&quot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:10.0pt;font-family:&quot;Helvetica=
&quot;,sans-serif">After
                    running these commands, it showed that calibration
                    was successful:<o:p></o:p></span></p>
              </div>
              <div>
                <div>
                  <div>
                    <p class=3D"MsoNormal"><span
                        style=3D"font-size:10.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif">=C2=A0The
                        calibration was successful!!! :-)<o:p></o:p></spa=
n></p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal"><span
                        style=3D"font-size:10.0pt;font-family:&quot;Helve=
tica&quot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif">What
                  other place can the .cal files be saved in?<o:p></o:p><=
/span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif">Thanks
                  again.<o:p></o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Helvetica&q=
uot;,sans-serif"><o:p>=C2=A0</o:p></span></p>
            </div>
          </div>
          <div id=3D"ydp3676ad2yahoo_quoted_3732052683">
            <div>
              <div>
                <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A">On
                    Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech
                    &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">patchvonbraun@gmail=
.com</a>&gt;
                    wrote:
                    <o:p></o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
              </div>
              <div>
                <div id=3D"ydp3676ad2yiv3352880938">
                  <div id=3D"ydp3676ad2yiv3352880938yqt92039">
                    <div>
                      <div>
                        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A">On
                            09/05/2023 12:21, zhou via USRP-users wrote:<=
o:p></o:p></span></p>
                      </div>
                    </div>
                    <div>
                      <div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A">Hi,<o:p></o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A">I
                              installed UHD 4.4 for X310 and calibrated
                              USRPs, but I can't find the expected .cal
                              file under=C2=A0</span><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Courier
                              New&quot;;color:black">${HOME}/.local/share=
/uhd/cal/.
                              Actually, there is
                              no=C2=A0${HOME}/.local/share/uhd/ directory=
.</span><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p></o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Courier
                              New&quot;;color:black">What can be wrong?</=
span><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p></o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Courier
                              New&quot;;color:black">Thanks for any
                              help,</span><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p></o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10.5pt;font-family:&quot=
;Courier
                              New&quot;;color:black">Hongwei</span><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p></o:p></span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><o:p>=C2=A0</o:p></span></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:12.0p=
t"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A"><br>
                          It could be that your desktop environment
                          stores local config and data files in another
                          place.<br>
                          <br>
                          What commands did you use to create the cal
                          files?<br>
                          <br>
                          <br>
                          <o:p></o:p></span></p>
                    </div>
                  </div>
                </div>
                <div id=3D"ydp3676ad2yqt49813">
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,sans-serif;co=
lor:#26282A">_______________________________________________<br>
                      USRP-users mailing list -- <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">
                        usrp-users-leave@lists.ettus.com</a><o:p></o:p></=
span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------S7h7a07FGUQPWOi6qG0PUlZz--

--===============3106129768469948251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3106129768469948251==--
