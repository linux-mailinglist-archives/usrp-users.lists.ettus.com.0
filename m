Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45228694BF5
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 17:03:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37740384538
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 11:03:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676304185; bh=1A8kWHdsi1w9k40tn4khPn6kGRDf9w5zMzZEe5QVY7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=g+A4I4o3rcZtuQL0ZXASu5QfLkqOQnk2W4xwatlcR9lY5b9RMTFoqH5Z7C0qGz9AY
	 0lmDk6fsUMr5NhnjGfl3J98VwioGMnp+NcQ1rsrrvZw80IYFhZnxb0hke9bitql6hw
	 cGAfH7m/1J+TeZo2TYtJ4FrvNyqvWiqjyfJ4wCEoPntjNRpiBhRycjt/JvqWwi1r7H
	 i0T8/p9EZcxgYypPbrY4v4Ng5+h0GCNQE1iHmScPdfQgv8/J+9ujczRqwVjb4f680e
	 RizlLXJGqIopmn06p688cqvwvSdPKIwzJn+hxPM1VatIBV+sSi35fkqryMd2r4FBv/
	 9HbqiB6ZadZXw==
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C480380AC4
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 11:02:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="CAzndIsn";
	dkim-atps=neutral
Received: by mail-wr1-f43.google.com with SMTP id k3so5134343wrv.5
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 08:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JK5OoupAsicBRe50GZtPqoVM8zO1i++OgEhEr3r4Y30=;
        b=CAzndIsnPZ7uafKSmcwEXCfH2qMyBDYvIN5Bgo+rbIuPxbXE2DVz7asD6fPzfzXAcH
         tWJp21elCRp4vA8ClI4lJdiqxXZhTRa+Bx9iWTiLAQHmVpOSTXVu2a16kG/0OI7Y6JIZ
         YdCPVIvUKq6W6piOLO3/CYf6yPmKzbZHK0zic6jvdejlyK58aUCgh3Nfe7U3XP9ONHWG
         OS7CN3hqp2ZUnr7RG4gFDAOhGTxw6M5ZAiJFKhoQECU/knL4dGdn58Fx/Qx/GEra5GyZ
         PHOTfUY6AzsnlVB/P1XUYoRXtQXZ29KLrT7D3YR6AXtCT1EkdA3F7pDf7b0XK8N2N2ug
         +dgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JK5OoupAsicBRe50GZtPqoVM8zO1i++OgEhEr3r4Y30=;
        b=a96NZq1SCxi/4ISQLqB32P0odvKjvij7LWoSJ4+X0nfyeaZfF/AaJnaxq2TaDkqumz
         3CRyHJ1T23lN5AzMEGcv8Sh3A7tX7BbOtiUaQCXOXjCWvvLPb7PRu20RTvZ6/kjjC5LO
         9LjRvgoSI6G/Upsy4IVRkuFGyDSLbhFVKOr0E98XXKbBOzlwtTFfnj1noDkZaZ8xgleL
         g7qPGK4sZwCCq69PzpSwI9wjBbqVLNFSJMrxhdw1IHJ6JMCuGMBdu6FKZy7sPih2ZYV7
         RK5rSmarLoAWC+UT6LGf4fVfb4e7xYSOtTHYhw1jg/QzNnO/+8vFNXCelYwqCGqyK6HD
         TKzA==
X-Gm-Message-State: AO0yUKWKrH67S5/nmNfP8I/p25ts1t95s4KGvEbp8YGWnabuARbZ7/E3
	cSr56P7auxaH8oZZDusFN9/wz8oCYp/N76oRXxE=
X-Google-Smtp-Source: AK7set9SH5+x2QNJ2NCBHRx7gbl6ROQNPLgjZa7dG8KMrORkfa1R8y6HHeBqgajg2uWVwXOXOfScQQ==
X-Received: by 2002:a5d:4589:0:b0:2c5:5945:ae84 with SMTP id p9-20020a5d4589000000b002c55945ae84mr2488215wrq.62.1676304133126;
        Mon, 13 Feb 2023 08:02:13 -0800 (PST)
Received: from ?IPV6:2001:9e8:3877:6b00:998f:ca6a:6065:3212? ([2001:9e8:3877:6b00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id l17-20020a5d6691000000b002c549dd0a4bsm8685418wru.37.2023.02.13.08.02.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 08:02:12 -0800 (PST)
Message-ID: <a38636a6-2429-0a03-1369-c8fc0f71fa93@ettus.com>
Date: Mon, 13 Feb 2023 17:02:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+7S2fZ8Zn-eAWGeM-V_8Ns=LbXV-X0UpurpbjXut9NDE0KFzw@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CA+7S2fZ8Zn-eAWGeM-V_8Ns=LbXV-X0UpurpbjXut9NDE0KFzw@mail.gmail.com>
Message-ID-Hash: 6QVEKDEYVGYEF3EIW6X72J6E2G4LMBC4
X-Message-ID-Hash: 6QVEKDEYVGYEF3EIW6X72J6E2G4LMBC4
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about using E-series radio in Windows under WSL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QVEKDEYVGYEF3EIW6X72J6E2G4LMBC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0900265848930037269=="

This is a multi-part message in MIME format.
--===============0900265848930037269==
Content-Type: multipart/alternative;
 boundary="------------MEpdmD6EXtq3PO923wgHQqc3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MEpdmD6EXtq3PO923wgHQqc3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Maxim,

UHD/RFNoC doesn't need any "special" capabilities of your network stack; =
only the ability=20
to pass through relatively high-rate data without reordering packets. I h=
ad students=20
myself that worked with N-series USRPs under WSL, that works just fine.

The Radioconda installation method of GNU Radio [1] works pretty nicely u=
nder windows, as=20
well, and gives you a native UHD (currently: UHD 4.3.0), without you havi=
ng to compile=20
anything from source (aside from your own module). You can find the radio=
conda windows=20
installer right here [2].

Best regards,
Marcus

[1] https://wiki.gnuradio.org/index.php?title=3DCondaInstall
[2] https://github.com/ryanvolz/radioconda/releases=C2=A0 (might have to =
click on "show all N=20
assets") on the most current release.

On 13.02.23 16:48, Maxim Belotserkovsky wrote:
> Have plans to take a GR flowgraff and port the design to the on-board F=
PGA in one of the=20
> Ettus product (most likely E320). Currently, the GR flowgraff has been =
developed inside=20
> a Docker desktop that uses WSL under windows. The concern is that it ma=
y be=20
> non-trivial/impossible to use RFNoC to incorporate HW acceleration beca=
use communication=20
> from GNU flowgraph to FPGA and back via UHD is not supported. So far ha=
ve been unable to=20
> find clear answers on Ettus site etc. Any comments? Thanks
>
> --=20
> Maxim=C2=A0Belotserkovsky
>
> maxim@gotenna.com
>
> <https://gotenna.com/>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------MEpdmD6EXtq3PO923wgHQqc3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Maxim,</p>
    <p>UHD/RFNoC doesn't need any "special" capabilities of your network
      stack; only the ability to pass through relatively high-rate data
      without reordering packets. I had students myself that worked with
      N-series USRPs under WSL, that works just fine.</p>
    <p>The Radioconda installation method of GNU Radio [1] works pretty
      nicely under windows, as well, and gives you a native UHD
      (currently: UHD 4.3.0), without you having to compile anything
      from source (aside from your own module). You can find the
      radioconda windows installer right here [2].</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <p>[1] <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.gnurad=
io.org/index.php?title=3DCondaInstall">https://wiki.gnuradio.org/index.ph=
p?title=3DCondaInstall</a><br>
      [2] <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/r=
yanvolz/radioconda/releases">https://github.com/ryanvolz/radioconda/relea=
ses</a>=C2=A0 (might have
      to click on "show all N assets") on the most current release.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 13.02.23 16:48, Maxim Belotserkovsk=
y
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fZ8Zn-eAWGeM-V_8Ns=3DLbXV-X0UpurpbjXut9NDE0KFzw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Have plans to take a GR flowgraff and port the
        design to the on-board FPGA in one of the Ettus product (most
        likely E320). Currently, the GR flowgraff has been developed
        inside a Docker desktop that uses WSL under windows. The concern
        is that it may be non-trivial/impossible to use RFNoC to
        incorporate HW acceleration because communication from GNU
        flowgraph to FPGA and back via UHD is not supported. So far have
        been unable to find clear answers on Ettus site etc. Any
        comments? Thanks<br clear=3D"all">
        <div><br>
        </div>
        -- <br>
        <div dir=3D"ltr" class=3D"gmail_signature"
          data-smartmail=3D"gmail_signature">
          <div dir=3D"ltr" style=3D"font-size:1px;direction:ltr">
            <table style=3D"width:100%;font-size:1px" cellspacing=3D"0"
              cellpadding=3D"0" border=3D"0">
              <tbody>
                <tr style=3D"font-size:0">
                  <td style=3D"vertical-align:top" align=3D"left">
                    <table style=3D"width:0;font-size:0" cellspacing=3D"0=
"
                      cellpadding=3D"0" border=3D"0">
                      <tbody>
                        <tr style=3D"font-size:0">
                          <td align=3D"left">
                            <table
style=3D"font-size:0;color:#000001;font-style:normal;font-weight:700;whit=
e-space:nowrap"
                              cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                              <tbody>
                                <tr style=3D"font-size:13.33px">
                                  <td
                                    style=3D"vertical-align:top;font-fami=
ly:Arial"
                                    align=3D"left">Maxim=C2=A0Belotserkov=
sky<span
style=3D"font-family:remialcxesans;font-size:1px;color:#ffffff;line-heigh=
t:1px"><span
style=3D"font-family:'template-aLaXcd5FEeqLAwANOhMLNA'"></span><span
                                        style=3D"font-family:'zone-1'"></=
span><span
                                        style=3D"font-family:'zones-AQ'">=
</span></span></td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr style=3D"font-size:0">
                  <td style=3D"vertical-align:top" align=3D"left">
                    <table style=3D"font-size:0" cellspacing=3D"0"
                      cellpadding=3D"0" border=3D"0">
                      <tbody>
                        <tr style=3D"font-size:0">
                          <td style=3D"padding:0 0
                            0.7px;vertical-align:top" align=3D"left">
                            <table
style=3D"font-size:0;color:#939598;font-style:normal;font-weight:400;whit=
e-space:nowrap"
                              cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                              <tbody>
                                <tr style=3D"font-size:13.33px">
                                  <td
                                    style=3D"vertical-align:top;font-fami=
ly:Arial"
                                    align=3D"left"><a
                                      href=3D"mailto:maxim@gotenna.com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">max=
im@gotenna.com</a></td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr style=3D"font-size:0">
                  <td style=3D"vertical-align:top" align=3D"left">
                    <table style=3D"font-size:0;line-height:normal"
                      cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                      <tbody>
                        <tr style=3D"font-size:0">
                          <td style=3D"padding:1px 0 0;vertical-align:top=
"
                            align=3D"left"><a href=3D"https://gotenna.com=
/"
                              style=3D"text-decoration:none"
                              target=3D"_blank" moz-do-not-send=3D"true">=
<img
src=3D"https://gotenna-marketing-files.s3.amazonaws.com/gotenna-email-sig=
nature.png"
                                alt=3D""
                                style=3D"height:34px;min-height:34px;max-=
height:34px;font-size:0"
                                moz-do-not-send=3D"true" height=3D"34"
                                border=3D"0"></a></td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------MEpdmD6EXtq3PO923wgHQqc3--

--===============0900265848930037269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0900265848930037269==--
