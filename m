Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9559D9B9D
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 17:37:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DF103859F6
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 11:37:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732639070; bh=sA124ef25rv/WcWlKi2yVZ/BFXLIb/+2R3WgpjLzDfQ=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WZbAfOk+g9CfyxyjIogl4RprJPWBOD0eGxelrefaQJ5dtuPt39ajOm308HmBXokOz
	 ZCIz6zV/fjJa1ZpxNRqES/bIEBko9CDW4oTf9woNkyfTtgAfWqgG1OUKvAzuOim0uB
	 cuR3hupYbi986LU1JR78CSIuzzxiiZBWwhOHIg4pHzu2PIRDPIO2Qd5g0IIGVXvvFZ
	 vEyF1SesoD1BVN/NeOlAPLx9fEsSVo7WA1JLN26xXMpKQsPMwvuKAQxu+20Py/SC7X
	 mGmP0ciXVQIY6x5HwVcEcmGk9QE7ww1D0QHLyQGvyGOisiaDZ+3YDMo/hn5g9Wnh4w
	 /wrUGU/soOjYg==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E4FF385833
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 11:37:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MWO3lxcD";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7b6600c9338so209315885a.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 08:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732639057; x=1733243857; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43iM1oqjxfeTEWmeid918iqaH7p7kWXtKl26HBAV7v8=;
        b=MWO3lxcDZnHVvOzm2aHLi3zvVyOxz6laIkcw8qvUh5gkkHvubLI2z2xseuhVAR53iU
         wcqCJhzXjhLIYfAayuecYvB37zr+Jvk5As8HYpa/ZnD/PRoLrpHsWwuc4Zi+slEyQDZl
         aV5ij+P1seAYBcZzWp7kFTwd4VpmTFjWibivLMm9e8imh1WxTgHsyEYv1G3nbc5Y+07h
         6/TlfmKpepTrH8EvPY9QZj/Yqn61kmRnWkIEzrTNpDJ0xpeK+j0aYNfyuxkvwpIGAYzC
         inddUIpUIvhWxBqMTMaNz0xFrtHdVCKSYH2CSAdA4QLnYwkR77gxxnL504Lrm2G4IVO/
         2JcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732639057; x=1733243857;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=43iM1oqjxfeTEWmeid918iqaH7p7kWXtKl26HBAV7v8=;
        b=CgUlfxGZe2J7TLW1Za7VL5UDmKTJgeKlhIdUMO6lUBNe1xO2kdbKj90eJLRM+9ryxD
         b8nLSzAYLYvyYaUMsvgsFN67WZoFnxmETVFS4PAg9mxBq8SZnQpbPPNu7LvWOTI50+JT
         36n+lJ4jwXnrTNaq25YS7wiMt+hCjEPSvm+tgaBTmLU4J8n6CFR5U3CX3nZE9a8abgts
         Ic+h8RlVIeQzW9c6XWDvofrf97FllDLNWbK6RYhvJsGpQtBBWGRZf8IOAqNx6QapscrB
         Iaa6COWtYcGmAWgJ9+69//L3RGAVSoIml9qysNTpuDgkbI9SlbwvsdSA3ROzLRwizVYQ
         T2Lw==
X-Gm-Message-State: AOJu0YxT1c4u/L/7MNhdu4GwHvGgnB4sAveiUzPvNIVks6SC8/G3iKMY
	faTNK0UKrFrocoN+qlYIBakeEzU5/gnmgzzJkREQMySl82bNaWLNzr/xpg==
X-Gm-Gg: ASbGncv8FAQbb7R0b4nM3TzsD2ZKgjOsxvtIO8yTAX5q2MFIqhReRssYNix7JOZi1TU
	vyPcpieXng9nE+c8a2JBrpFIXbD8mcqdwDcYhgJUnolviNqVcf510FN0LOzPlqFp9mTZVqS8QzU
	z6muoJGAF6FYOVVYdrpWLGhO1wENPGXrgedebNV6u/WkfNOYdvLUfp5Bqfk/SrJj/DklotYGTJY
	YjH/TGvMyHhp5vWSuEC2VXNim2WIQAGiUb3/YoKydjgwt0cWvIRwgMTrQWw
X-Google-Smtp-Source: AGHT+IGLQkbiSVFB2yprwHr8dovvOjfCaHKTWu13s9T/fk7WLilwPewBPeENfjSUgpkNKXuDgYUVKg==
X-Received: by 2002:a05:620a:2604:b0:7b6:67a0:499d with SMTP id af79cd13be357-7b667a04b90mr1351379985a.1.1732639056593;
        Tue, 26 Nov 2024 08:37:36 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b6683847dasm252393485a.12.2024.11.26.08.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 08:37:36 -0800 (PST)
Message-ID: <2f9f7405-d4f0-4ebc-a820-591879c49d86@gmail.com>
Date: Tue, 26 Nov 2024 11:37:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Houshang <houshang.azizi@accelleran.com>
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
 <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
 <CAO=xj9WGNbN5_YjrD6KfqTB2HA0bxmyr6D1iwRsqoH7VpcVnpg@mail.gmail.com>
 <ba50962f-2d73-425a-afc6-364cf359384e@gmail.com>
 <CAO=xj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=Rw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAO=xj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=Rw@mail.gmail.com>
Message-ID-Hash: HG54PDZPZNMPHDKAFSD427MWC3FRWI3O
X-Message-ID-Hash: HG54PDZPZNMPHDKAFSD427MWC3FRWI3O
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HG54PDZPZNMPHDKAFSD427MWC3FRWI3O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5961543320878547986=="

This is a multi-part message in MIME format.
--===============5961543320878547986==
Content-Type: multipart/alternative;
 boundary="------------jyoeCZT0FXBHIfhhCdv7LVAi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jyoeCZT0FXBHIfhhCdv7LVAi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2024 11:32, Houshang wrote:
> Hi Marcus
> I ran the benchmark command on both ip of the n310 and attached you=20
> can find the printout.
I"m going to guess that one of your interfaces is operating at 1Gbit,=20
while the other is operating at 10Gbit?

I don't know what rates the srsRAN software runs the interface at, but=20
clearly in your 2nd example, on the
 =C2=A0 other IP, it's able to support 25Msps without any issue.


>
> On Tue, 26 Nov 2024 at 17:22, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/11/2024 11:10, Houshang wrote:
>>     Many thanks for prompt reply Marcus! Please find attached the
>>     printout for that probe command you asked for.
>     OK, so the next thing to do is to test your network capacity
>     between your host computer and the N310:
>
>     benchmark_rate --args
>     "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_rate=3D=
125e6"
>     --rx_rate 25e6 --tx_rate 25e6
>
>
>>
>>     On Tue, 26 Nov 2024 at 16:59, Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 26/11/2024 10:18, Houshang wrote:
>>>         Hello
>>>
>>>         I have following UHD version on my server:
>>>
>>>         /ad@bm-super11-intel:~/houshang$ uhd_config_info --version
>>>         UHD 4.7.0.0-0ubuntu1~jammy1
>>>         ad@bm-super11-intel:~/houshang$ ssh root@10.10.0.100/
>>>
>>>         And the following UHD version on my n310:
>>>
>>>         /root@ni-n3xx-32000F1:~# uhd_config_info --version
>>>         UHD 4.7.0.0-0-ga5ed1872
>>>         root@ni-n3xx-32000F1:~# /
>>>
>>>         They are the same and my n310 is updated with the following
>>>         file:
>>>
>>>         /ad@bm-super11-intel:~/houshang$ md5sum
>>>         /usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>>         532b338d6861268c05a4fd9837ca80e5
>>>         =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit
>>>         ad@bm-super11-intel:~/houshang$ /
>>>
>>>         I am running srsRAN gNB on my server (/Commit 9d5dd742a/). A
>>>         version of srs of srsRAN that is compiled with /UHD 4.7.0.0./
>>>
>>>
>>>         Here are the error messages I get:
>>>
>>>         /=3D=3D=3D=3D gNB started =3D=3D=3D
>>>         Type <h> to view help
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Late: 2805; Underflow: 2238; Overflow: 0;
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Late: 0; Underflow: 5; Overflow: 0;
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Late: 0; Underflow: 4; Overflow: 0;
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Late: 0; Underflow: 4; Overflow: 0;
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK.
>>>         Late: 0; Underflow: 4; Overflow: 0;
>>>         Error: failed receiving packet. RfnocError: OpTimeout:
>>>         Control operation timed out waiting for ACK./
>>>
>>>
>>>         And obviously it is not working with this amount of errors.
>>>
>>>         Can anyone help me with this please? Is it a bug in the UHD
>>>         version? Or is there something I am missing here?
>>>
>>>         Thanks
>>>         Houshang
>>>
>>         Try "the basics" first.
>>
>>         What does:
>>
>>         uhd_usrp_probe --args "type=3Dn3xx,product=3Dn310,addr=3D192.1=
68.10.2"
>>
>>
>>         Produce (you might have to change the addr to whatever the
>>         address is of your N310).
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>
>>     --=20
>>
>>     *Houshang Azizi*
>>
>>     *Test Engineer*
>>
>>     logo <https://www.accelleran.com/>
>>
>>     *(32) 492195241*
>>
>>     *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>>
>>     *www.accelleran.com* <http://www.accelleran.com/>
>>
>>     linkedin icon <https://www.linkedin.com/company/accelleran>
>>     twitter icon <https://twitter.com/accelleran> youtube icon
>>     <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1>
>>
>>
>
>
>
> --=20
>
> *Houshang Azizi*
>
> *Test Engineer*
>
> logo <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <mailto:Email@accelleran.com>*
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> linkedin icon <https://www.linkedin.com/company/accelleran> twitter=20
> icon <https://twitter.com/accelleran> youtube icon=20
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D=
1>
>

--------------jyoeCZT0FXBHIfhhCdv7LVAi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2024 11:32, Houshang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=3DRw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi Marcus</div>
        <div>I ran the benchmark command on both ip of the n310 and
          attached you can find the printout.<br>
        </div>
      </div>
    </blockquote>
    I"m going to guess that one of your interfaces is operating at
    1Gbit, while the other is operating at 10Gbit?<br>
    <br>
    I don't know what rates the srsRAN software runs the interface at,
    but clearly in your 2nd example, on the<br>
    =C2=A0 other IP, it's able to support 25Msps without any issue.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9Vm1eDeKvyGrUaUmrzLCCA9uv_jyFcdJthgBOVt0cE=3DRw@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024 at 17:2=
2,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 26/11/2024 11:10, Houshang wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Many thanks for prompt reply Marcus! Pleas=
e
                find attached the printout for that probe command you
                asked for.<br>
              </div>
            </blockquote>
            OK, so the next thing to do is to test your network capacity
            between your host computer and the N310:<br>
            <br>
            benchmark_rate --args
            "type=3Dn3xx,product=3Dn310,addr=3D10.10.0.100,master_clock_r=
ate=3D125e6"
            --rx_rate 25e6 --tx_rate 25e6<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Nov 2024=
 at
                  16:59, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div>
                    <div>On 26/11/2024 10:18, Houshang wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>Hello</div>
                        <div><br>
                        </div>
                        <div>I have following UHD version on my server:</=
div>
                        <br>
                        <i><span
                            style=3D"background-color:rgb(238,238,238)">a=
d@bm-super11-intel:~/houshang$
                            uhd_config_info --version<br>
                            UHD 4.7.0.0-0ubuntu1~jammy1<br>
                            ad@bm-super11-intel:~/houshang$ ssh <a
                              href=3D"mailto:root@10.10.0.100"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">root@10.10.=
0.100</a></span></i><br>
                        <br>
                        And the following UHD version on my n310:<br>
                        <br>
                        <i><span
                            style=3D"background-color:rgb(238,238,238)">r=
oot@ni-n3xx-32000F1:~#
                            uhd_config_info --version<br>
                            UHD 4.7.0.0-0-ga5ed1872<br>
                            root@ni-n3xx-32000F1:~# </span></i><br>
                        <br>
                        <div>They are the same and my n310 is updated
                          with the following file:</div>
                        <div><br>
                        </div>
                        <i><span
                            style=3D"background-color:rgb(238,238,238)">a=
d@bm-super11-intel:~/houshang$
                            md5sum
                            /usr/share/uhd/images/usrp_n310_fpga_HG.bit<b=
r>
                            532b338d6861268c05a4fd9837ca80e5
                            =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG=
.bit<br>
                            ad@bm-super11-intel:~/houshang$ </span></i><b=
r>
                        <br>
                        I am running srsRAN gNB on my server (<i><span
                            style=3D"background-color:rgb(238,238,238)">C=
ommit
                            9d5dd742a</span></i>). A version of srs of
                        srsRAN that is compiled with <i><span
                            style=3D"background-color:rgb(238,238,238)">U=
HD
                            4.7.0.0.</span></i><br>
                        <br>
                        <br>
                        Here are the error messages I get:<br>
                        <br>
                        <i><span
                            style=3D"background-color:rgb(238,238,238)">=3D=
=3D=3D=3D
                            gNB started =3D=3D=3D<br>
                            Type &lt;h&gt; to view help<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 2805; Underflow: 2238; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 5; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.<br>
                            Late: 0; Underflow: 4; Overflow: 0;<br>
                            Error: failed receiving packet. RfnocError:
                            OpTimeout: Control operation timed out
                            waiting for ACK.</span></i><br>
                        <br>
                        <br>
                        And obviously it is not working with this amount
                        of errors.<br>
                        <br>
                        Can anyone help me with this please? Is it a bug
                        in the UHD version? Or is there something I am
                        missing here?<br>
                        <br>
                        Thanks<br>
                        Houshang<br>
                      </div>
                      <br>
                    </blockquote>
                    Try "the basics" first.<br>
                    <br>
                    What does:<br>
                    <br>
                    uhd_usrp_probe --args
                    "type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2"<br>
                    <br>
                    <br>
                    Produce (you might have to change the addr to
                    whatever the address is of your N310).<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
              <div><br clear=3D"all">
              </div>
              <br>
              <span class=3D"gmail_signature_prefix">-- </span><br>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                          Azizi</span></b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                          Engineer</span></b></p>
                  </div>
                  <a href=3D"https://www.accelleran.com/" rel=3D"noopener=
"
style=3D"color:rgb(51,122,183);background-color:transparent"
                    target=3D"_blank" moz-do-not-send=3D"true"><font
                      size=3D"2"><img alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                        moz-do-not-send=3D"true" width=3D"143" border=3D"=
0"></font></a>
                  <div style=3D"text-align:left">
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                          492195241</span></b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span
                            style=3D"color:black"><a
                              href=3D"mailto:Email@accelleran.com"
                              target=3D"_blank" moz-do-not-send=3D"true">=
houshang.azizi@accelleran.com</a></span></b></span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=A0</span></p>
                    <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                          href=3D"http://www.accelleran.com/"
                          style=3D"color:rgb(17,85,204)" target=3D"_blank=
"
                          moz-do-not-send=3D"true"><b><span
                              style=3D"color:rgb(246,146,30)">www.accelle=
ran.com</span></b></a></span></p>
                  </div>
                  <p style=3D"text-align:left;margin:20px 0px"><a
                      href=3D"https://www.linkedin.com/company/accelleran=
"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
                      href=3D"https://twitter.com/accelleran"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
                      rel=3D"noopener"
style=3D"color:rgb(51,122,183);background-color:transparent"
                      target=3D"_blank" moz-do-not-send=3D"true"><img
                        alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                        moz-do-not-send=3D"true" width=3D"15" border=3D"0=
"></a>=C2=A0=C2=A0=C2=A0
                    <br>
                  </p>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <div><br clear=3D"all">
      </div>
      <br>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)=
">Houshang
                  Azizi</span></b><span
                style=3D"font-size:11pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30=
)">Test
                  Engineer</span></b></p>
          </div>
          <a href=3D"https://www.accelleran.com/" rel=3D"noopener"
            style=3D"color:rgb(51,122,183);background-color:transparent"
            target=3D"_blank" moz-do-not-send=3D"true"><font size=3D"2"><=
img
                alt=3D"logo"
src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_NewLo=
go_NoBaseline.png"
style=3D"border: 0px; vertical-align: middle; width: 143px; height: auto;=
"
                moz-do-not-send=3D"true" width=3D"143" border=3D"0"></fon=
t></a>
          <div style=3D"text-align:left">
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><b><span
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:black">(32)
                  492195241</span></b><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"></s=
pan></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><b>=
<span
                    style=3D"color:black"><a
                      href=3D"mailto:Email@accelleran.com" target=3D"_bla=
nk"
                      moz-do-not-send=3D"true">houshang.azizi@accelleran.=
com</a></span></b></span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p>
            <p class=3D"MsoNormal"
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,s=
ans-serif"><span
                style=3D"font-size:10pt;font-family:Arial,sans-serif"><a
                  href=3D"http://www.accelleran.com/"
                  style=3D"color:rgb(17,85,204)" target=3D"_blank"
                  moz-do-not-send=3D"true"><b><span
                      style=3D"color:rgb(246,146,30)">www.accelleran.com<=
/span></b></a></span></p>
          </div>
          <p style=3D"text-align:left;margin:20px 0px"><a
              href=3D"https://www.linkedin.com/company/accelleran"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"linkedin icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/ln.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
              href=3D"https://twitter.com/accelleran" rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"twitter icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/tt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0=C2=A0<a
href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRef=
resh=3D1"
              rel=3D"noopener"
              style=3D"color:rgb(51,122,183);background-color:transparent=
"
              target=3D"_blank" moz-do-not-send=3D"true"><img
                alt=3D"youtube icon"
src=3D"https://www.mail-signatures.com/signature-generator/img/templates/=
simple-and-light/yt.png"
style=3D"border: 0px; vertical-align: middle; height: 15px; width: 15px;"
                moz-do-not-send=3D"true" width=3D"15" border=3D"0"></a>=C2=
=A0=C2=A0=C2=A0 <br>
          </p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------jyoeCZT0FXBHIfhhCdv7LVAi--

--===============5961543320878547986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5961543320878547986==--
