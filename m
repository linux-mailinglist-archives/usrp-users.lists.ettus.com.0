Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9F335D132
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:39:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DCFF3841F0
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:39:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MyW/kTKJ";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D9DB384B4E
	for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 15:38:41 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id 1so10920013qtb.0
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 12:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=iT+72X1L2dK08CqAACcy4afgyPPTP3vPXMyCnyoyZk0=;
        b=MyW/kTKJUjWmXy/5oI91zVmO/oFsg0gF+wu0uJswc8ZSLMbkkiTbP3vHT22nAgZYQx
         oGMD5izPcqj6bkLBtr8FjjxY3biWXjNliA2SAjfe4eJwJkrv0XrpD0IHRSdVhsGC9T/Q
         VjLqvdGVf9JxK9YlQmgFodE8dv+Hko9WmmoEV7lODAq1pjrHl8TdBTDRkwEnTRaaCJFS
         pGAEhz1p2YuzPPNq8S+fFATQQdSJd0GHQfhWv1HX/PjGIm1Kds4Li4O/YrEDXDqZbkx4
         Rd+jkrCWIgiu/edC30xdmmSFDRewxPJCU8LwYdxvW4HVwD6jhJR1h4bYg7sYkgA1g4+6
         ilEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=iT+72X1L2dK08CqAACcy4afgyPPTP3vPXMyCnyoyZk0=;
        b=ZgqcDXrL5dHv1IDvFmMbZwei6/bzadjqyEaT7SJPkL8zTVSNk2YQe9N9isLhSU0rjE
         fEEbvAZDo6EC0Z8HqEgrQjQyXI0yrvVmte+8zvDHL1n5+C0RBpCCW8HzTdTz2wZlhtQ1
         pNth1SNLRVcqfBEpPj6a8PmrLLkafopsEg3hkl5jD/Khu9ri05de6TOhMCD3aaohgW2n
         /UUni5vGEnojUlBLs7F8rTSoBhzrRTpo32hSXEcnC0rQnBs+UNl7Yyh96UFssh+1fuFT
         pvTH3N4dL+0aNZXmnw1Ogb0IjHCZJkI7+80bwC05KY5WqppLe2CzxP8sdrZpKnezhqxG
         DMPA==
X-Gm-Message-State: AOAM532fELFZ6eNp0pcKGVMoxl9EmC7T5ymyoF6T4UOnjnYYC822hQEC
	LE6TnVUThAi0cHrnz8YxJvo=
X-Google-Smtp-Source: ABdhPJwRoJdt2biIhLWYTKKaA5inLtiCl7UpcbwhhcPGIhUKo4MExSiz6Qh4Ggo/U6VvUH52Saedow==
X-Received: by 2002:ac8:6f49:: with SMTP id n9mr9387063qtv.375.1618256320932;
        Mon, 12 Apr 2021 12:38:40 -0700 (PDT)
Received: from [10.103.240.83] ([207.164.46.58])
        by smtp.gmail.com with ESMTPSA id x13sm8466739qtf.32.2021.04.12.12.38.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 12:38:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Apr 2021 15:38:39 -0400
Message-Id: <10DA98AC-3316-4A85-871E-1BB5D3148C1A@gmail.com>
References: <6989E600-E8E1-4EEA-AE6C-B375F935DA30@gmail.com>
In-Reply-To: <6989E600-E8E1-4EEA-AE6C-B375F935DA30@gmail.com>
To: paradis@kwesst.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: UPI5MGV4ZU7MHNE5UBDP5UVCD55ANWO4
X-Message-ID-Hash: UPI5MGV4ZU7MHNE5UBDP5UVCD55ANWO4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UPI5MGV4ZU7MHNE5UBDP5UVCD55ANWO4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1104100205316903561=="


--===============1104100205316903561==
Content-Type: multipart/alternative; boundary=Apple-Mail-9F8B36AE-7347-4036-BDE3-9DDF0FE08421
Content-Transfer-Encoding: 7bit


--Apple-Mail-9F8B36AE-7347-4036-BDE3-9DDF0FE08421
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Also it may be blowing whatever power budget your port provides. Is it a USB=
2 or USB3 port?



Sent from my iPhone

> On Apr 12, 2021, at 3:36 PM, Marcus D Leech <patchvonbraun@gmail.com> wrot=
e:
>=20
> =EF=BB=BFThere is no kernel-level
> Driver for this device. It=E2=80=99s handled by Libusb=20
>=20
> Sent from my iPhone
>=20
>>> On Apr 12, 2021, at 3:34 PM, paradis@kwesst.com wrote:
>>>=20
>> =EF=BB=BF
>> I=E2=80=99ve been poking around trying to find out any more information o=
n my issue and I noticed this after running the =E2=80=98usb-devices=E2=80=99=
 command:
>>=20
>> T: Bus=3D01 Lev=3D01 Prnt=3D01 Port=3D01 Cnt=3D02 Dev#=3D 10 Spd=3D480 Mx=
Ch=3D 0
>>=20
>> D: Ver=3D 2.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D 1
>>=20
>> P: Vendor=3D2500 ProdID=3D0022 Rev=3D01.00
>>=20
>> S: Manufacturer=3DCypress
>>=20
>> S: Product=3DWestBridge
>>=20
>> S: SerialNumber=3D0000000004BE
>>=20
>> C: #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D200mA
>>=20
>> I: If#=3D0x0 Alt=3D 0 #EPs=3D 0 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=
=3D(none)
>>=20
>>=20
>>=20
>> The VID/PID are 2500:0022 so this is the B205 I have plugged in, but on t=
he very last line it says =E2=80=9CDriver=3D(none).
>>=20
>> Could there be something wrong with the UHD installation? Should I try a d=
ifferent version than v4.0.0.0?
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-9F8B36AE-7347-4036-BDE3-9DDF0FE08421
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Also it may be blowing whatever power budge=
t your port provides. Is it a USB2 or USB3 port?<div><br></div><div><br><br>=
<div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Apr 12, 2021, at 3:36 PM, Marcus D Leech &lt;patchvonbraun@g=
mail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html=
; charset=3Dutf-8">There is no kernel-level<div>Driver for this device. It=E2=
=80=99s handled by Libusb&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone<=
/div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 12, 2021, at 3:34=
 PM, paradis@kwesst.com wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<p>I=E2=80=99ve been poking around trying t=
o find out any more information on my issue and I noticed this after running=
 the =E2=80=98usb-devices=E2=80=99 command:</p><p>T:  Bus=3D01 Lev=3D01 Prnt=
=3D01 Port=3D01 Cnt=3D02 Dev#=3D 10 Spd=3D480 MxCh=3D 0</p><p>D:  Ver=3D 2.0=
0 Cls=3D00(&gt;ifc ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1</p><p>P:  Vend=
or=3D2500 ProdID=3D0022 Rev=3D01.00</p><p>S:  Manufacturer=3DCypress</p><p>S=
:  Product=3DWestBridge </p><p>S:  SerialNumber=3D0000000004BE</p><p>C:  #If=
s=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D200mA</p><p>I:  If#=3D0x0 Alt=3D 0 #EPs=3D=
 0 Cls=3Dff(vend.) Sub=3D00 Prot=3D00 Driver=3D(none)</p><p><br></p><p>The V=
ID/PID are 2500:0022 so this is the B205 I have plugged in, but on the very l=
ast line it says =E2=80=9CDriver=3D(none).</p><p>Could there be something wr=
ong with the UHD installation? Should I try a different version than v4.0.0.=
0?</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></blockquote></div></body></html>=

--Apple-Mail-9F8B36AE-7347-4036-BDE3-9DDF0FE08421--

--===============1104100205316903561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1104100205316903561==--
