Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 863502056C6
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 18:08:32 +0200 (CEST)
Received: from [::1] (port=51854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnlTJ-0007Ft-S7; Tue, 23 Jun 2020 12:08:29 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:45438)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnlTG-0007Bg-1I
 for USRP-users@lists.ettus.com; Tue, 23 Jun 2020 12:08:26 -0400
Received: by mail-qv1-f53.google.com with SMTP id u8so2840372qvj.12
 for <USRP-users@lists.ettus.com>; Tue, 23 Jun 2020 09:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ep7yAQcghNHcxHk97L75sRsnog8HMNqdWnYMicYHPs4=;
 b=TM+erTVBsHDbgHVj1+04nio0+/0ljkhrhKYIXGPvOpUn1QWaoJRvyVdrxk4pnknsoa
 JKWFGxlA3mzWyOeZ7wIweYB55fpVt3VsU/myFhlNWsOwXzV77YFxlaHWWQrwUWfZmNHX
 5bsSmx8QIZvLRC1AiJgHJXp8q2/kgyWsU24ydlO7pLx3GsBp2uI2BIKKKjbUYwGw2nK1
 iC9hOPDyp5HN7wubDB6rYW9WqXbEzOqVEp4p2YPrBZIoszfLm4Pc2g9QIX9Q4y7J3DGR
 zDhFvn5v3mlyvHyjgQjboc8u39hdHUmWLfFlQYfcRGBXWQ9MJakawW08Fj+XkrzIAfIf
 Hs6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ep7yAQcghNHcxHk97L75sRsnog8HMNqdWnYMicYHPs4=;
 b=Yfayw1W+OqU9WpzXBN5Dl/ErPdoumSP6gMU04MZFuuNgMuNrFBdjrWb+cr/PxTITF8
 ok/p5Pebvrj/3kURE4AfMQs5xYKxBwiZKV19ydZWXywLdZ/birLvFFRcIWOXmhWKV8Yr
 efZ9ANgK3RFYTAIb0YXEbaY+aivrPeUOJ/ImbSkTZnP5PYk3qMDPGzMN6uWpYrV5jES4
 WVC9KpNTihgC4CcIK0H7F3XFW4xK+JAw0/uLX4Devhc/iZTgE7OfmUpcGjJgEDXpqogy
 CnroqqZXkBe0G+/zjsj0y9wTygYi11BZ0OB8u206LTz1BKlRi1UI6mtxelwAkhHbdBwV
 owqQ==
X-Gm-Message-State: AOAM533GHp9IbabEPz/DXLmOQaLzpLe7YYzRSFXBE01/QZtgecJH1PJr
 TML2pTeoUkOFGpmFSq8Ie8J2NYeX9t8=
X-Google-Smtp-Source: ABdhPJytSF0uLQc3rt0PKJIMKnzT4mjA6Ax9apr8gC5BXA/IWfMsIwD28VilXili+5vbD8mrjhc90Q==
X-Received: by 2002:ad4:4a64:: with SMTP id cn4mr15237340qvb.199.1592928465533; 
 Tue, 23 Jun 2020 09:07:45 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id f127sm937528qkb.55.2020.06.23.09.07.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jun 2020 09:07:45 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Jun 2020 12:07:44 -0400
Message-Id: <181DF584-DAE3-4267-AFD3-C7C61CCC6C12@gmail.com>
References: <CAKU1+bjUbmooO6wHGd085fNGQng873n5VdtiDCPYnTEoqMT8XA@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAKU1+bjUbmooO6wHGd085fNGQng873n5VdtiDCPYnTEoqMT8XA@mail.gmail.com>
To: Kevin Hung <cykhung@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] AM transmission
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2300458844094268937=="
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


--===============2300458844094268937==
Content-Type: multipart/alternative; boundary=Apple-Mail-789EAE1F-0F47-468C-A57E-362B095D4512
Content-Transfer-Encoding: 7bit


--Apple-Mail-789EAE1F-0F47-468C-A57E-362B095D4512
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Phase offset as measured against what, and how would that matter for a not-p=
hase-sensitive modulation?



Sent from my iPhone

> On Jun 22, 2020, at 11:39 PM, Kevin Hung <cykhung@gmail.com> wrote:
>=20
> =EF=BB=BF
> Just my guess. The rx IQ samples are rotated by a constant phase offset.
>=20
>> On Mon, Jun 22, 2020 at 9:53 PM Marcus D. Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>> On 06/22/2020 09:14 PM, Ernest Poletaev via USRP-users wrote:
>>> Hello everyone,
>>>=20
>>> I'm new to SDR and trying to implement transmission with AM Modulation u=
sing uhd library with B205mini board.
>>>=20
>>> Currently I have following procedure:
>>>=20
>>> Set RX and TX parameters for RF frequency, channel 0
>>> Set sampling frequency to 1M samples per second
>>> Set RX and TX gain
>>> Receiving as sc8, sc8
>>> Transmitting as fc32, sc8
>>>=20
>>> -loop:
>>>=20
>>> Receiving:
>>>=20
>>> As usual with AM demodulation and it is working
>>>=20
>>> Transmitting:
>>>=20
>>> On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw audio
>>> Convert each 16 bit sample to complex float with Q=3D[audio sample norma=
lized to -1 - 1] and I =3D 0
>>> Resample (simple interpolation) 44100Hz buffer to 1MHz
>>> Send buffer for transmission
>>>=20
>>> -end loop
>>>=20
>>> As RX and TX have same frequency I can see data on RF Analyzer, but it d=
idn't demodulates to an audio signal.
>>>=20
>>> Am I missing something or my assumption is wrong on some steps?
>>>=20
>>> Regards,
>>> Ernest
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20
>> I'm going to suggest that if you're new to SDR and DSP, you might invest t=
he time to install Gnu Radio, which provides a very rich environment
>>   for not only constructing DSP flows for most popular SDR radios, but al=
so debugging those flows when they don't work out as you expect.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-789EAE1F-0F47-468C-A57E-362B095D4512
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Phase offset as measured against what, and h=
ow would that matter for a not-phase-sensitive modulation?<div><br></div><di=
v><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">On Jun 22, 2020, at 11:39 PM, Kevin Hung &lt;cykhung@=
gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<div><div dir=3D"auto">Just my guess. The rx IQ sampl=
es are rotated by a constant phase offset.</div></div><div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Mon, Jun 22, 2020 at 9:53 PM Marcus D. Lee=
ch via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"></div><div bgcolor=3D"#FFFFFF" t=
ext=3D"#000000">
    <div>On 06/22/2020 09:14 PM, Ernest Poletaev
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div name=3D"messageBodySection">
        <div dir=3D"auto">Hello everyone,<br>
          <br>
          I'm new to SDR and trying to implement transmission with AM
          Modulation using uhd library with B205mini board.<br>
          <br>
          Currently I have following procedure:<br>
          <br>
          Set RX and TX parameters for RF frequency, channel 0<br>
          Set sampling frequency to 1M samples per second<br>
          Set RX and TX gain<br>
          Receiving as sc8, sc8<br>
          Transmitting as fc32, sc8<br>
          <br>
          -loop:<br>
          <br>
          Receiving:<br>
          <br>
          As usual with AM demodulation and it is working<br>
          <br>
          Transmitting:<br>
          <br>
          On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw
          audio<br>
          Convert each 16 bit sample to complex float with Q=3D[audio
          sample normalized to -1 - 1] and I =3D 0<br>
          Resample (simple interpolation) 44100Hz buffer to 1MHz<br>
          Send buffer for transmission<br>
          <br>
          -end loop<br>
          <br>
          As RX and TX have same frequency I can see data on RF
          Analyzer, but it didn't demodulates to an audio signal.<br>
          <br>
          Am I missing something or my assumption is wrong on some
          steps?<br>
        </div>
      </div>
      <div name=3D"messageSignatureSection"><br>
        <div>
          <div dir=3D"auto">Regards,
            <div dir=3D"auto">Ernest</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a>
</pre>
    </blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000">
    I'm going to suggest that if you're new to SDR and DSP, you might
    invest the time to install Gnu Radio, which provides a very rich
    environment<br>
    &nbsp; for not only constructing DSP flows for most popular SDR radios,
    but also debugging those flows when they don't work out as you
    expect.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-789EAE1F-0F47-468C-A57E-362B095D4512--


--===============2300458844094268937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2300458844094268937==--

