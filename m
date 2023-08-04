Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 537E677038D
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 16:51:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 783F4384B71
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 10:51:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691160666; bh=Z6offKZEBIK34CZaPETvfa02ZqBUeWvsuUKvt5X2tbA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xW0YTpe4WDfv6uaQNKGI/Egoz7ShO0iV7wG9Ur1WDHSDBxRIT4hSDw8F8beTpZd8W
	 SV4WqR/M4YETkaSOTV3qT406UJoUOrCWkUvg3xbEb+ZXjN1nILFVttQPYtNnDCcLbV
	 xmi/RCWyNycXrvyFIb1lTbOo2RKTx5Yr4D1wvOKBC1w2YocsAGVwcK37YgLGq3jDcf
	 UZRA/ispVwBgX5k4WT4BgE5TM7l5ToFNOiTm/Ev1yPRiCcz2ORviDBV2gSxqIV63m2
	 5GI9O9Th9iJ1AJXMfesvv81DgDsIbnuBm0IUG/Hx+6fUdjQCagGKz0DM2lHSUOyI/X
	 Cne7ng8qzy85w==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 79D73384B4B
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 10:50:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HdMeRhh1";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-403a3df88a8so15339571cf.3
        for <usrp-users@lists.ettus.com>; Fri, 04 Aug 2023 07:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691160650; x=1691765450;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lq8fk5gablH2g8nMrwHkecnkD1zL2m6oqnSvX8GbfN0=;
        b=HdMeRhh1lIP1ivJofp8rJQlS95bTfSijhtt8nNxLsHho1w2Cydoq9BWzrHReKT54Y7
         5SgYNDXk23TYkixKTwTa/5OOVZgvmiypw6Ar97O+gp3k3qBlpVN3p7MwPfI0DpiVRXmv
         GoBS961lLYlc47WhBt/nlagHTdu+yhTYkOeb0pRsPiVP+MM04VJl3qrr83lYbI9NVow7
         kp7Y2hRlRhlOTzr2T0Hw3/nPmDU0KTpnzJSOoIpGO+3Y1DjHj/u+g+RoIiSVcW0pr8P/
         0ftN257XQk//TyJAqXpY15bV9PrGCVV1BTYaiDFNse5zc0H/Jt+ACGxCuZpbAIaCEcps
         9Waw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691160650; x=1691765450;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lq8fk5gablH2g8nMrwHkecnkD1zL2m6oqnSvX8GbfN0=;
        b=F8ssu4pgJSvk/j1v3VXl/sRKrNVYf7o4hY9gxbmH5ej14jb6bppNXaCKd5zkixV6Nr
         DxAlpifdZ7LcVVAZZABozoChmRBCafbB0iOUykcDPFgaaYeannQQBSwni+lX/MjHC7In
         xWD7LFYwhHeHhkNrSRmfh5lqiMr3ox9uvU7lwm6rlVJvcY5M490GJ9sIjTZn5Ef2uGCE
         ZGYkgTpdkd6vRnTlYURDHFGLWZVcMPU1vKkE+LlVv8DdTNTxqIOMkfmUYbnxvNt0bE2f
         39MFcfqi4vwp8Dx3uGACTsKFGsdPiAY/emNaO1hrUf5IxJvsM/nvP8cTTf37ai7PY6VU
         0hGA==
X-Gm-Message-State: AOJu0YxsEBP9SpGl0vYNI9zjGo9cxlpp6g2JcTG6I0/MgAJNm13/S5bt
	V6fjEAea3hGQWrtbF3eIN7GTrdXOpFQ=
X-Google-Smtp-Source: AGHT+IHaLGlHIv4ivVWmDYq1pmT/emzsuCFKGaIYjM8NhrtY0oExOZB7LEogyS4Egv9bZXHpkqs5QA==
X-Received: by 2002:a0c:fa45:0:b0:62b:33fb:d04c with SMTP id k5-20020a0cfa45000000b0062b33fbd04cmr2153418qvo.31.1691160650580;
        Fri, 04 Aug 2023 07:50:50 -0700 (PDT)
Received: from [192.168.2.168] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y10-20020a0cf14a000000b0063d038df3f3sm712060qvl.52.2023.08.04.07.50.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Aug 2023 07:50:50 -0700 (PDT)
Message-ID: <ca2c9fa1-85a7-dfe2-6546-8a6ba00fc76e@gmail.com>
Date: Fri, 4 Aug 2023 10:50:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CA+7S2fYo6EBFRKWLyEwDox5LQGSKMU9UaVkT2KWC45d+x3fQvw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2fYo6EBFRKWLyEwDox5LQGSKMU9UaVkT2KWC45d+x3fQvw@mail.gmail.com>
Message-ID-Hash: UBQGRJZR57GVCS5H5OODPMCFBKWQVBWE
X-Message-ID-Hash: UBQGRJZR57GVCS5H5OODPMCFBKWQVBWE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions about using B200 mini-i with Windows apps (Windows 11)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBQGRJZR57GVCS5H5OODPMCFBKWQVBWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9189023502210934846=="

This is a multi-part message in MIME format.
--===============9189023502210934846==
Content-Type: multipart/alternative;
 boundary="------------agy5l9HSr0i3VJ8D9f1SBEGZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------agy5l9HSr0i3VJ8D9f1SBEGZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/08/2023 10:47, Maxim Belotserkovsky wrote:
> Hi. I've successfully used my B200 mini-i under GNU radio in a ubuntu=20
> container. I've recently found a need to use simple routines just to=20
> send/receive canned data=C2=A0samples from Windows. There are some exam=
ple=20
> utility programs that got installed a while=C2=A0back when I first=20
> installed the UHD drive, which are located under "C:\Program=20
> Files\UHD\lib\uhd\examples". I've successfully=C2=A0used=20
> "rx_samples_to_file" from Windows CMD shell to receive usable data=20
> transmitted from an external RF source. However, when I try using any=20
> of the transmit routines, such as "tx_sampes_from_file" or=20
> "tx_waveforms" (including just sending a canned SINE waveform),=20
> nothing happens - all I get when I hook up the TX output to the scope=20
> is just background noise. I know it's not the physical device, because=20
> it still works with GR. For example, I've used this:
> "tx_waveforms --wave-type SINE --wave-freq 1.0e3 --freq 70.0e6 --rate=20
> 1.0e6 --gain 20 --bw 200.0e3".
> Thanks
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
Try turning the gain up 10-20dB.=C2=A0 The gain-control range on TX on th=
e=20
B200 series is 90dB.=C2=A0 So at 20dB, you're about 70dB
 =C2=A0 below the maximum output level.


--------------agy5l9HSr0i3VJ8D9f1SBEGZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/08/2023 10:47, Maxim
      Belotserkovsky wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fYo6EBFRKWLyEwDox5LQGSKMU9UaVkT2KWC45d+x3fQvw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi. I've successfully used my B200 mini-i under GN=
U
        radio in a ubuntu container. I've recently found a need to use
        simple routines just to send/receive canned data=C2=A0samples fro=
m
        Windows. There are some example utility programs that got
        installed a while=C2=A0back when I first installed the UHD drive,
        which are located under "C:\Program Files\UHD\lib\uhd\examples".
        I've successfully=C2=A0used "rx_samples_to_file" from Windows CMD
        shell to receive usable data transmitted from an external RF
        source. However, when I try using any of the transmit routines,
        such as "tx_sampes_from_file" or "tx_waveforms" (including just
        sending a canned SINE waveform), nothing happens - all I get
        when I hook up the TX output to the scope is just background
        noise. I know it's not the physical device, because it still
        works with GR. For example, I've used this:=C2=A0
        <div>"tx_waveforms --wave-type SINE --wave-freq 1.0e3 --freq
          70.0e6 --rate 1.0e6 --gain 20 --bw 200.0e3".=C2=A0 =C2=A0</div>
        <div>Thanks<br>
          <div>
            <div><br>
            </div>
            <span class=3D"gmail_signature_prefix">-- </span><br>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr" style=3D"font-size:1px;direction:ltr">
                <table style=3D"width:100%;font-size:1px" cellspacing=3D"=
0"
                  cellpadding=3D"0" border=3D"0">
                  <tbody>
                    <tr style=3D"font-size:0">
                      <td style=3D"vertical-align:top" align=3D"left">
                        <table style=3D"width:0;font-size:0"
                          cellspacing=3D"0" cellpadding=3D"0" border=3D"0=
">
                          <tbody>
                            <tr style=3D"font-size:0">
                              <td align=3D"left">
                                <table
style=3D"font-size:0;color:#000001;font-style:normal;font-weight:700;whit=
e-space:nowrap"
                                  cellspacing=3D"0" cellpadding=3D"0"
                                  border=3D"0">
                                  <tbody>
                                    <tr style=3D"font-size:13.33px">
                                      <td
                                        style=3D"vertical-align:top;font-=
family:Arial"
                                        align=3D"left">Maxim=C2=A0Belotse=
rkovsky<span
style=3D"font-family:remialcxesans;font-size:1px;color:#ffffff;line-heigh=
t:1px"><span
style=3D"font-family:'template-aLaXcd5FEeqLAwANOhMLNA'"></span><span
                                            style=3D"font-family:'zone-1'=
"></span><span
style=3D"font-family:'zones-AQ'"></span></span></td>
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
                                  cellspacing=3D"0" cellpadding=3D"0"
                                  border=3D"0">
                                  <tbody>
                                    <tr style=3D"font-size:13.33px">
                                      <td
                                        style=3D"vertical-align:top;font-=
family:Arial"
                                        align=3D"left"><a
                                          href=3D"mailto:maxim@gotenna.co=
m"
                                          target=3D"_blank"
                                          moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-freetext"=
>maxim@gotenna.com</a></td>
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
                          cellspacing=3D"0" cellpadding=3D"0" border=3D"0=
">
                          <tbody>
                            <tr style=3D"font-size:0">
                              <td style=3D"padding:1px 0
                                0;vertical-align:top" align=3D"left"><a
                                  href=3D"https://gotenna.com/"
                                  style=3D"text-decoration:none"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"><img
src=3D"https://gotenna-marketing-files.s3.amazonaws.com/gotenna-email-sig=
nature.png"
                                    alt=3D""
                                    style=3D"height:34px;min-height:34px;=
max-height:34px;font-size:0"
                                    moz-do-not-send=3D"true" height=3D"34=
"
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
    Try turning the gain up 10-20dB.=C2=A0 The gain-control range on TX o=
n
    the B200 series is 90dB.=C2=A0 So at 20dB, you're about 70dB<br>
    =C2=A0 below the maximum output level.<br>
    <br>
    <br>
  </body>
</html>

--------------agy5l9HSr0i3VJ8D9f1SBEGZ--

--===============9189023502210934846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9189023502210934846==--
