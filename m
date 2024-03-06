Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD00F8741AE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 22:13:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7B53385324
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 16:13:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709759622; bh=b9XkgYbfp+qK4gr60bebNX7uQ91fCklzvdoMEWuelmY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=L3Femq0b7gCjiXnI79DgNq/XDYeAsZ3UkxJk38c055wC3Hci+0yeRzYa88xOGoPZu
	 e1AzsR0M8C36E3Ik2LEjfFEXMc7llugGYap1QjMQp04pzBGlHAeLQP6VW62sHT9FCR
	 OVcRMdb2c3kOTD29XkS2pTSDM8EoWzhvazEkMIfEaj5L/v9TAMWVXh9henx6N6dXT6
	 CtUr45Qqr5jDsortNfpTM12weePgQ0VgIa8ua9UR9rTlohdNgrd9Mz4AkX6Y/GJmyC
	 7E+GYRR02dvFqfyx1RLpVGMHxlJhEkjdp705J3kjRUXchNuZDMGx3YI47m1Js+AUZi
	 hYhdgItM6FA9g==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 58244385223
	for <usrp-users@lists.ettus.com>; Wed,  6 Mar 2024 16:13:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ihJK1r7T";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-563bb51c36eso164253a12.2
        for <usrp-users@lists.ettus.com>; Wed, 06 Mar 2024 13:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1709759581; x=1710364381; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ok7m8a72d1TrnocwF1klwwmdqILeQx7etl+0bYlCYAQ=;
        b=ihJK1r7TOXob8IaW3pZ/S+X32RF1fYMUDbjtSWzqJA/j29kjFVOZu4grqMW3rAS4cH
         o0X9ui2803qiV0uDYSTGOKChvH0pBbPt0yyizP0EHq7nhXX+FI4O5Vb1rtqp4LYw7GHN
         fd2aX/810R2Dal0+3ybQy975NDap8X9KFrk3iJ8qN3n3DH25+4DdzX+/zwDZ888eIXY2
         uY2jQtOkeTJD+9dOECiCYC6OBHReOiII/kDju66Jj4wUm4IiXPhJsoM/mtU9OkqD3aoA
         YUTzjzR5rX5DBZJdY57axUFcfXlDF8J/FizSxf44fNHjJxHqqbS4kZMzCoyeRo39ehsa
         uCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709759581; x=1710364381;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ok7m8a72d1TrnocwF1klwwmdqILeQx7etl+0bYlCYAQ=;
        b=WLeY/bXeykQieKfHXOMRF7ajH+qzKzL4bxjwrNR+bMONpni7tA5blXPDjGkGnSEla6
         ucuMyUT32XcKNynNI7CRYxJf76bc6LYQhgvJ6h+xigul5SFQYL2SQAXbDYscA07ZulTm
         nBTVGJqyMYR+4aNkSInXfh6NtBboEbEuxNTwgJby1xTOLxgQ3fFZ3maICxT2Rw5Q1Tlu
         uro0vBy2x9m5UOfiIssd41WnKaQP+zTHFxbAdt4N6wQtrnrMh71xd2hEgbapTR5iVwwY
         TjDFBC+JBjd7+M/nSe+/ti4UIkNJOrFqeGEE5XBbfk0YLSXCZQSzNQbl4unmxG6HV42E
         E/7A==
X-Forwarded-Encrypted: i=1; AJvYcCXoSscmfiLde0c7sTOOBJ1RIDT6s3Hb+wUiSp710FAqdNGM1Iisx74PKu8CBEk+fedXG23+ey9/dro3uawc7Bp2bx+b/0IgKLbU+g==
X-Gm-Message-State: AOJu0YzyU3F3GNsbBnSiArRVWZeeBH531O7d5AJ5UstPcE+6xpkjSn7B
	yXsipMiHgRRswGNnhHDC//vp/jdeBlPyVOoM72pHGvRaWVoZQ4MznmSidX85bK5o7NReWI72trz
	vXc/ZNmNhqra3QJPV38/owh/F/fSJrRnjbCog
X-Google-Smtp-Source: AGHT+IHTlme80J6LqfVamSWMwPTXzHyE/G8SZ/t1IdY5Fx1Ne0D/Zn+TN5g+2wZlDlMdg2o1U1gEABlsNY36FOk9cCE=
X-Received: by 2002:a50:85c6:0:b0:566:4654:4fac with SMTP id
 q6-20020a5085c6000000b0056646544facmr10726428edh.5.1709759580893; Wed, 06 Mar
 2024 13:13:00 -0800 (PST)
MIME-Version: 1.0
References: <0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw@lists.ettus.com> <BN0P110MB1015AECCD6D12E8C244ADAC0B121A@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB1015AECCD6D12E8C244ADAC0B121A@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Date: Wed, 6 Mar 2024 16:12:49 -0500
Message-ID: <CAB__hTRLzNONw=rB7VLuQVS4=4y8OZ-NzNTiy77cY=w0ZOGp2g@mail.gmail.com>
To: "White, Joshua J" <jjwhite@riversideresearch.org>
Message-ID-Hash: RRFJDMXXWFBHQMELOAH5BJFY7FJQTAAP
X-Message-ID-Hash: RRFJDMXXWFBHQMELOAH5BJFY7FJQTAAP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "yguruprasad@umass.edu" <yguruprasad@umass.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRFJDMXXWFBHQMELOAH5BJFY7FJQTAAP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4529275156226899701=="

--===============4529275156226899701==
Content-Type: multipart/alternative; boundary="00000000000078a52b0613046ce5"

--00000000000078a52b0613046ce5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The IP address of 192.168.10.2 and the MTU size of 1472 indicate that your
link is a 1Gb link. The max rate this can support is 25MS/s. You will need
to connect at 10Gbe if you want to run at 100MS/s.
Rob

On Wed, Mar 6, 2024 at 2:31=E2=80=AFPM White, Joshua J <
jjwhite@riversideresearch.org> wrote:

> The underflows you=E2=80=99re getting mean your host PC isn=E2=80=99t pro=
viding samples
> fast enough for the rate the radio is consuming them and it=E2=80=99s und=
errunning
> the TX buffer. Likely there isn=E2=80=99t enough bandwidth between the ho=
st PC and
> the radio to support 100 Msps. There is a pretty good discussion of
> bandwidth and sampling rates here:
>
>
>
> https://kb.ettus.com/About_USRP_Bandwidths_and_Sampling_Rates
>
>
>
> Very respectfully,
>
>
>
> *Joshua White*
>
> Precision Timing Systems Engineer
>
> Engineering & Support Solutions Directorate
>
> www.riversideresearch.org
>
> T: 937.986.3153 | F: 937.431.3811
>
>
>
> This e-mail message, including any attachments, is for the sole use of th=
e
> intended recipient(s) and may contain proprietary, confidential or
> privileged information or otherwise be protected by law. Any unauthorized
> review, use, disclosure or distribution is prohibited. If you are not the
> intended recipient, please notify the sender and destroy all copies and t=
he
> original message.
>
>
>
> *From:* yguruprasad@umass.edu <yguruprasad@umass.edu>
> *Sent:* Wednesday, March 6, 2024 1:56 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] X310
>
>
>
>  *CAUTION:* This email is from outside of Riverside Research. Be careful
> when clicking links or opening attachments unless you know the content is
> safe.
>
> Could some help me if this is working as expected?
>
>
> ./bin/txrx_loopback_to_file --tx-args addr=3D192.168.10.2 --rx-args
> addr=3D192.168.10.2 --tx-rate 100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-f=
req
> 18e6
>
> Creating the transmit usrp device with: addr=3D192.168.10.2...
>
> [INFO] [UHD] linux; GNU C++ version 8.5.0 20210514 (Red Hat 8.5.0-20);
> Boost_106600; UHD_4.2.0.1-0-g321295fb
>
> [INFO] [X300] X300 initialization sequence...
>
> [INFO] [X300] Maximum frame size: 1472 bytes.
>
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 1.101
>
> [INFO] [X300] Radio 1x clock: 200 MHz
>
> [INFO] [0/KeepOneInN#0] Setting default MTU forward policy.
>
> Creating the receive usrp device with: addr=3D192.168.10.2...
>
> Using TX Device: Single USRP:
>
> Device: X-Series Device
>
> Mboard 0: X310
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: BasicRX (0)
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: A
>
> RX Subdev: BasicRX (1)
>
> RX Channel: 2
>
> RX DSP: 2
>
> RX Dboard: B
>
> RX Subdev: Unknown (0xffff) - 0
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: BasicTX (0)
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: B
>
> TX Subdev: Unknown (0xffff) - 0
>
> Using RX Device: Single USRP:
>
> Device: X-Series Device
>
> Mboard 0: X310
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: BasicRX (0)
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: A
>
> RX Subdev: BasicRX (1)
>
> RX Channel: 2
>
> RX DSP: 2
>
> RX Dboard: B
>
> RX Subdev: Unknown (0xffff) - 0
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: BasicTX (0)
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: B
>
> TX Subdev: Unknown (0xffff) - 0
>
> Setting TX Rate: 100.000000 Msps...
>
> Actual TX Rate: 100.000000 Msps...
>
> Setting RX Rate: 6.500000 Msps...
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
> 6.452 MHz
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
> 6.452 MHz
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [0/DDC#1] The requested decimation is odd; the user should
> expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8
> will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 31
>
> [WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is
> 6.452 MHz
>
> Actual RX Rate: 6.451613 Msps...
>
> Setting TX Freq: 20.000000 MHz...
>
> Actual TX Freq: 20.000005 MHz...
>
> Setting RX Freq: 18.000000 MHz...
>
> Actual RX Freq: 17.999995 MHz...
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Press Ctrl + C to stop streaming...
>
> Setting device timestamp to 0...
>
>
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUU^CUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
>
> Done!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000078a52b0613046ce5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The IP address of 192.168.10.2 and the MT=
U size of 1472 indicate that your link is a 1Gb link. The max rate this can=
 support is 25MS/s. You will need to connect at 10Gbe if you want to run at=
 100MS/s.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Mar 6, 2024 at 2:31=E2=80=AFPM White, Joshua=
 J &lt;<a href=3D"mailto:jjwhite@riversideresearch.org">jjwhite@riversidere=
search.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg810971353213467543"><div lang=3D"EN-US" style=
=3D"overflow-wrap: break-word;"><div class=3D"m_810971353213467543WordSecti=
on1"><p class=3D"MsoNormal">The underflows you=E2=80=99re getting mean your=
 host PC isn=E2=80=99t providing samples fast enough for the rate the radio=
 is consuming them and it=E2=80=99s underrunning the TX buffer. Likely ther=
e isn=E2=80=99t enough bandwidth between the host PC and the radio to suppo=
rt 100 Msps. There is a pretty good discussion of bandwidth and sampling ra=
tes here: <u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>=
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/About_USRP_Bandwidth=
s_and_Sampling_Rates" target=3D"_blank">https://kb.ettus.com/About_USRP_Ban=
dwidths_and_Sampling_Rates</a><u></u><u></u></p><p class=3D"MsoNormal"><u><=
/u>=C2=A0<u></u></p><div><p class=3D"MsoNormal"><span style=3D"color:rgb(31=
,73,125)">Very respectfully,<u></u><u></u></span></p><p class=3D"MsoNormal"=
><b><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></b></p=
><p class=3D"MsoNormal"><b><span style=3D"color:rgb(31,73,125)">Joshua Whit=
e<u></u><u></u></span></b></p><p class=3D"MsoNormal"><span style=3D"color:r=
gb(31,73,125)">Precision Timing Systems Engineer<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Engineering &amp;=
 Support Solutions Directorate<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"color:rgb(31,73,125)"><a href=3D"http://www.riversiderese=
arch.org/" target=3D"_blank"><span style=3D"color:blue">www.riversideresear=
ch.org</span></a> <u></u><u></u></span></p><p class=3D"MsoNormal"><span sty=
le=3D"color:rgb(31,73,125)">T: 937.986.3153 | F: 937.431.3811<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;color=
:rgb(31,73,125)">This e-mail message, including any attachments, is for the=
 sole use of the intended recipient(s) and may contain proprietary, confide=
ntial or privileged information or otherwise be protected by law. Any unaut=
horized review, use, disclosure or distribution is prohibited. If you are n=
ot the intended recipient, please notify the sender and destroy all copies =
and the original message.</span><span style=3D"color:rgb(31,73,125)"><u></u=
><u></u></span></p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><di=
v><div style=3D"border-right:none;border-bottom:none;border-left:none;borde=
r-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in"><p class=3D"MsoNormal=
"><b>From:</b> <a href=3D"mailto:yguruprasad@umass.edu" target=3D"_blank">y=
guruprasad@umass.edu</a> &lt;<a href=3D"mailto:yguruprasad@umass.edu" targe=
t=3D"_blank">yguruprasad@umass.edu</a>&gt; <br><b>Sent:</b> Wednesday, Marc=
h 6, 2024 1:56 PM<br><b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> [USR=
P-users] X310<u></u><u></u></p></div></div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p><div style=3D"border:1.5pt solid rgb(249,228,54);padding:2=
pt 0in;background:rgb(242,70,61)"><p style=3D"background:rgb(242,70,61);bor=
der:none;padding:0in"><span style=3D"font-size:9pt;font-family:Arial,sans-s=
erif;color:rgb(246,246,246)">=C2=A0</span><strong><span style=3D"font-size:=
9pt;font-family:Arial,sans-serif;color:rgb(15,15,15)">CAUTION:</span></stro=
ng><span style=3D"font-size:9pt;font-family:Arial,sans-serif;color:rgb(246,=
246,246)"> This email is from outside of Riverside Research. Be careful whe=
n clicking links or opening attachments unless you know the content is safe=
.</span><span style=3D"color:black"> </span><u></u><u></u></p></div><div><p=
>Could some help me if this is working as expected?<u></u><u></u></p><p><br=
>./bin/txrx_loopback_to_file --tx-args addr=3D192.168.10.2 --rx-args addr=
=3D192.168.10.2 --tx-rate 100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-freq 18=
e6<u></u><u></u></p><p>Creating the transmit usrp device with: addr=3D192.1=
68.10.2...<u></u><u></u></p><p>[INFO] [UHD] linux; GNU C++ version 8.5.0 20=
210514 (Red Hat 8.5.0-20); Boost_106600; UHD_4.2.0.1-0-g321295fb<u></u><u><=
/u></p><p>[INFO] [X300] X300 initialization sequence...<u></u><u></u></p><p=
>[INFO] [X300] Maximum frame size: 1472 bytes.<u></u><u></u></p><p>[INFO] [=
GPS] Found an internal GPSDO: LC_XO, Firmware Rev 1.101<u></u><u></u></p><p=
>[INFO] [X300] Radio 1x clock: 200 MHz<u></u><u></u></p><p>[INFO] [0/KeepOn=
eInN#0] Setting default MTU forward policy.<u></u><u></u></p><p>Creating th=
e receive usrp device with: addr=3D192.168.10.2...<u></u><u></u></p><p>Usin=
g TX Device: Single USRP:<u></u><u></u></p><p>Device: X-Series Device<u></u=
><u></u></p><p>Mboard 0: X310<u></u><u></u></p><p>RX Channel: 0<u></u><u></=
u></p><p>RX DSP: 0<u></u><u></u></p><p>RX Dboard: A<u></u><u></u></p><p>RX =
Subdev: BasicRX (0)<u></u><u></u></p><p>RX Channel: 1<u></u><u></u></p><p>R=
X DSP: 1<u></u><u></u></p><p>RX Dboard: A<u></u><u></u></p><p>RX Subdev: Ba=
sicRX (1)<u></u><u></u></p><p>RX Channel: 2<u></u><u></u></p><p>RX DSP: 2<u=
></u><u></u></p><p>RX Dboard: B<u></u><u></u></p><p>RX Subdev: Unknown (0xf=
fff) - 0<u></u><u></u></p><p>TX Channel: 0<u></u><u></u></p><p>TX DSP: 0<u>=
</u><u></u></p><p>TX Dboard: A<u></u><u></u></p><p>TX Subdev: BasicTX (0)<u=
></u><u></u></p><p>TX Channel: 1<u></u><u></u></p><p>TX DSP: 1<u></u><u></u=
></p><p>TX Dboard: B<u></u><u></u></p><p>TX Subdev: Unknown (0xffff) - 0<u>=
</u><u></u></p><p>Using RX Device: Single USRP:<u></u><u></u></p><p>Device:=
 X-Series Device<u></u><u></u></p><p>Mboard 0: X310<u></u><u></u></p><p>RX =
Channel: 0<u></u><u></u></p><p>RX DSP: 0<u></u><u></u></p><p>RX Dboard: A<u=
></u><u></u></p><p>RX Subdev: BasicRX (0)<u></u><u></u></p><p>RX Channel: 1=
<u></u><u></u></p><p>RX DSP: 1<u></u><u></u></p><p>RX Dboard: A<u></u><u></=
u></p><p>RX Subdev: BasicRX (1)<u></u><u></u></p><p>RX Channel: 2<u></u><u>=
</u></p><p>RX DSP: 2<u></u><u></u></p><p>RX Dboard: B<u></u><u></u></p><p>R=
X Subdev: Unknown (0xffff) - 0<u></u><u></u></p><p>TX Channel: 0<u></u><u><=
/u></p><p>TX DSP: 0<u></u><u></u></p><p>TX Dboard: A<u></u><u></u></p><p>TX=
 Subdev: BasicTX (0)<u></u><u></u></p><p>TX Channel: 1<u></u><u></u></p><p>=
TX DSP: 1<u></u><u></u></p><p>TX Dboard: B<u></u><u></u></p><p>TX Subdev: U=
nknown (0xffff) - 0<u></u><u></u></p><p>Setting TX Rate: 100.000000 Msps...=
<u></u><u></u></p><p>Actual TX Rate: 100.000000 Msps...<u></u><u></u></p><p=
>Setting RX Rate: 6.500000 Msps...<u></u><u></u></p><p>[WARNING] [0/DDC#0] =
The requested decimation is odd; the user should expect passband CIC rollof=
f.<u></u><u></u></p><p>Select an even decimation to ensure that a halfband =
filter is enabled.<u></u><u></u></p><p>Decimations factorable by 4 will ena=
ble 2 halfbands, those factorable by 8 will enable 3 halfbands.<u></u><u></=
u></p><p>decimation =3D dsp_rate/samp_rate -&gt; 31<u></u><u></u></p><p>[WA=
RNING] [0/DDC#0] The requested decimation is odd; the user should expect pa=
ssband CIC rolloff.<u></u><u></u></p><p>Select an even decimation to ensure=
 that a halfband filter is enabled.<u></u><u></u></p><p>Decimations factora=
ble by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfb=
ands.<u></u><u></u></p><p>decimation =3D dsp_rate/samp_rate -&gt; 31<u></u>=
<u></u></p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Ac=
tual rate is 6.452 MHz<u></u><u></u></p><p>[WARNING] [0/DDC#0] The requeste=
d decimation is odd; the user should expect passband CIC rolloff.<u></u><u>=
</u></p><p>Select an even decimation to ensure that a halfband filter is en=
abled.<u></u><u></u></p><p>Decimations factorable by 4 will enable 2 halfba=
nds, those factorable by 8 will enable 3 halfbands.<u></u><u></u></p><p>dec=
imation =3D dsp_rate/samp_rate -&gt; 31<u></u><u></u></p><p>[WARNING] [0/DD=
C#0] The requested decimation is odd; the user should expect passband CIC r=
olloff.<u></u><u></u></p><p>Select an even decimation to ensure that a half=
band filter is enabled.<u></u><u></u></p><p>Decimations factorable by 4 wil=
l enable 2 halfbands, those factorable by 8 will enable 3 halfbands.<u></u>=
<u></u></p><p>decimation =3D dsp_rate/samp_rate -&gt; 31<u></u><u></u></p><=
p>[WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is=
 6.452 MHz<u></u><u></u></p><p>[WARNING] [0/DDC#1] The requested decimation=
 is odd; the user should expect passband CIC rolloff.<u></u><u></u></p><p>S=
elect an even decimation to ensure that a halfband filter is enabled.<u></u=
><u></u></p><p>Decimations factorable by 4 will enable 2 halfbands, those f=
actorable by 8 will enable 3 halfbands.<u></u><u></u></p><p>decimation =3D =
dsp_rate/samp_rate -&gt; 31<u></u><u></u></p><p>[WARNING] [0/DDC#1] The req=
uested decimation is odd; the user should expect passband CIC rolloff.<u></=
u><u></u></p><p>Select an even decimation to ensure that a halfband filter =
is enabled.<u></u><u></u></p><p>Decimations factorable by 4 will enable 2 h=
alfbands, those factorable by 8 will enable 3 halfbands.<u></u><u></u></p><=
p>decimation =3D dsp_rate/samp_rate -&gt; 31<u></u><u></u></p><p>[WARNING] =
[MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is 6.452 MHz<u=
></u><u></u></p><p>Actual RX Rate: 6.451613 Msps...<u></u><u></u></p><p>Set=
ting TX Freq: 20.000000 MHz...<u></u><u></u></p><p>Actual TX Freq: 20.00000=
5 MHz...<u></u><u></u></p><p>Setting RX Freq: 18.000000 MHz...<u></u><u></u=
></p><p>Actual RX Freq: 17.999995 MHz...<u></u><u></u></p><p>[WARNING] [0/R=
adio#0] Attempting to set tick rate to 0. Skipping.<u></u><u></u></p><p>Pre=
ss Ctrl + C to stop streaming...<u></u><u></u></p><p>Setting device timesta=
mp to 0...<u></u><u></u></p><p>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^CUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUU<u></u><u></u></p><p>Done!<u></u><u></u></p></div></div></div>=
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--00000000000078a52b0613046ce5--

--===============4529275156226899701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4529275156226899701==--
