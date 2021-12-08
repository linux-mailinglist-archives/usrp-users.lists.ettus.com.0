Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EF46DA6D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 18:54:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59881384723
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 12:54:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hyUsb/79";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id F0B10384465
	for <USRP-users@lists.ettus.com>; Wed,  8 Dec 2021 12:53:38 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id m192so2706726qke.2
        for <USRP-users@lists.ettus.com>; Wed, 08 Dec 2021 09:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Qb7xj4amfYB9DjDgMGycMB51/Wmp+ukKGpE/lcvQFSQ=;
        b=hyUsb/79FYv2dOTNj8eRaB2k/dHnjc3Colk1ranRKqn1jpX1eYgB9xhKbahJGCKJ2J
         BbcfDK2FPlWT4G9TmQXgnDaFmNng4BBQESztdR0wAzSyP8yYKCFn4zkYuVk0rQDEtU3l
         v+gCcragSajk4Ryk+50lzewKKignEdWN2Yfl8gSjJU09vxSpglqERkDu+8AbSB94ep+i
         utxuJOuAtMmXlSejcOSbTcU0Z8pHJ2vLj1WXIZjdntjTD2s+L8B952oW2T1p7EI5OUS5
         RgF4Tht/GoHD8A+IuIea+X6HLeSp0JIExyZAhucKzY90ZV3ZCHy9/Rx6rZ3Ioj6ce+oe
         mSDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Qb7xj4amfYB9DjDgMGycMB51/Wmp+ukKGpE/lcvQFSQ=;
        b=7/cGbDzF7B4mZ9QYmPv6otfNDbWtNBSa1k9THlcKt0RaOkEF26xwWV0RdxHGVk9+sL
         X0/vAXd0Vd6/aGrTZt4nslDyEtTwoOGaqKsWrqWg4VxR4qjZHc4/INKSIH9MqsXqdL7y
         v5VbrDT80Q7j2765aWiOq+h69ZGVK+Qw3G2LgQ6Z5/4FZBGj8OblqLk6HcvW2GPA+gFd
         gre7ZbiTobxDuHUBv8df93xB1POJQXW1Y2YIxdwf+ML4rOPJb7hDn7tGXV4hY0RwixYG
         37HtzLTSEcReksEaX7r69HiHswdYj3TJx1H7Bw08250k1Xe0XSKXhOQ9i3p/oLAZvlr9
         zUuA==
X-Gm-Message-State: AOAM530LwbBxlcsod0Oh+qZWF0N1Va9unoT3XVaEQpGJ2fDpL1TodLXK
	DoKIDMwRG6lU5iPbxzZvT6k=
X-Google-Smtp-Source: ABdhPJxn57O01UaaQVjf2HYKLP7vUSh/eqtEgAYkcAaWi8L+fPZuB4TtnYH67sua/hXxjseKWgLD7g==
X-Received: by 2002:a05:620a:288c:: with SMTP id j12mr8535142qkp.66.1638986018508;
        Wed, 08 Dec 2021 09:53:38 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id d3sm2124194qty.38.2021.12.08.09.53.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 09:53:38 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 8 Dec 2021 12:53:36 -0500
Message-Id: <CF828871-EE74-475D-95BB-C34DE928C4DC@gmail.com>
References: <CAB__hTQWnQpDwyepWJWUs8S2vjin8DBVqSr07BUFfaF=jByWqQ@mail.gmail.com>
In-Reply-To: <CAB__hTQWnQpDwyepWJWUs8S2vjin8DBVqSr07BUFfaF=jByWqQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: L4VMLDOCY5VYJWVI6L7JTLVATGKE6K3Y
X-Message-ID-Hash: L4VMLDOCY5VYJWVI6L7JTLVATGKE6K3Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: zeyuan.li@zengyi-tech.com, USRP list <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4VMLDOCY5VYJWVI6L7JTLVATGKE6K3Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4929030776884052076=="


--===============4929030776884052076==
Content-Type: multipart/alternative; boundary=Apple-Mail-731228F5-DA4B-42E0-8CB4-905BF49A54D9
Content-Transfer-Encoding: 7bit


--Apple-Mail-731228F5-DA4B-42E0-8CB4-905BF49A54D9
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I agree. The code that was sent includes an explicit call to set_tx_lo_sourc=
e. But it needs to also appear in the device arguments.=20

Sent from my iPhone

> On Dec 8, 2021, at 12:14 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> I searched the code for "rx_lo_source=3Dexternal" and "tx_lo_source=3Dexte=
rnal", but didn't find anything related. It seems that the device args shoul=
d include these. =20
>=20
>> On Wed, Dec 8, 2021 at 11:02 AM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>> On 2021-12-08 02:05, zeyuan.li@zengyi-tech.com wrote:
>>> I do not set TX or RX.This is my python code.Please give me some suggest=
ions.
>>>=20
>>> Thinks.
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>>>=20
>> Ah, you're using Gnu Radio.  I'll have to think about how to meet the con=
straints of external-LO use when using Gnu Radio.
>>=20
>> Has anyone else done this?
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-731228F5-DA4B-42E0-8CB4-905BF49A54D9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I agree. The code that was sent includes an=
 explicit call to set_tx_lo_source. But it needs to also appear in the devic=
e arguments.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Dec 8, 2021, at 12:14 PM, Rob Koss=
ler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">I searched the code fo=
r "rx_lo_source=3Dexternal" and "tx_lo_source=3Dexternal", but didn't find&n=
bsp;anything related. It seems that the device args should include these.&nb=
sp;&nbsp;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Dec 8, 2021 at 11:02 AM Marcus D. Leech &lt;<a href=3D"mailt=
o:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-12-08 02:05,
      <a href=3D"mailto:zeyuan.li@zengyi-tech.com" target=3D"_blank">zeyuan.=
li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=
=AD=89=E7=BA=BF" lang=3D"EN-US">I do
            not set TX or RX.This is my python code.Please give me some
            suggestions.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=
=AD=89=E7=BA=BF" lang=3D"EN-US">Thinks.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=E7=
=AD=89=E7=BA=BF" lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></=
span></p>
          <br>
        </div>
      </div>
    </blockquote>
    Ah, you're using Gnu Radio.&nbsp; I'll have to think about how to meet
    the constraints of external-LO use when using Gnu Radio.<br>
    <br>
    Has anyone else done this?<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-731228F5-DA4B-42E0-8CB4-905BF49A54D9--

--===============4929030776884052076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4929030776884052076==--
