Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3176B454B99
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 18:07:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48A07384023
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 12:07:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="IP5lLw6x";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FD57383EBE
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 12:06:16 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id b17so2481150qvl.9
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 09:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to;
        bh=ojGu5TmktN/RkQAttJOYwyPMqrM5xpV8GqkFXe6Dlow=;
        b=IP5lLw6xrmPXNDLu4YmQXqxYTfHoKH+2hWpeF5r0hbFp3kf8LYLOi+DXPPWGKt0Xr/
         m5JaNEhGhTpCxVZOr4T2ByiQaSR88j2Ze4P6qNQIMuF7s54oDWA41ywHI8RETwIpX3Qo
         HMa+XNDOvCcXeLc0BOepvRZhhgTJffkKdb+vXOpT6oxYpAUppaOUaEyktACUz01SPCPm
         QwqzlswUFc6JQX/krwfIH07qfIImXLKSHJt8zDSzh0gnvx5jhCAX0DEYzrBvkL0jVTvd
         tLEgHgzNXQV0Ejq9o5UWvmIbE14sr83KqPUw2zVBLhjQzz7R2257i/Vo6xwQ/HzCWP/S
         8jzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to;
        bh=ojGu5TmktN/RkQAttJOYwyPMqrM5xpV8GqkFXe6Dlow=;
        b=midTBIZiq88HqzEnS2vjAI5kCrGSkVLG8UggDJSAh10e9Qp5UxoVS8IWgeFyQBUPsr
         orpLD5pzvQaB2W4MVXbTwA8CVjFoYagOplfUa1Yt0XGM19VKmNhnnny7vsLLw6rkpHrT
         Qbd65ZTLd3tijpH2viXcGyX7Ce5eHkY1cFr0q6g/BfPPs3I94rcofZVDbwtCQlrPoFGG
         lERALDuX2AhuXcIceGxfdEZg8TLncdtOMfJrLCjzLzsYyoY3zw9aa3WO1VZP3P09oiDU
         S5L37vJvQmOJpGz5qdaBCXtU0rFG17hDSlK8pPw4rtF2PHVcTLWKVXgwQabqTfc5TedV
         YUEA==
X-Gm-Message-State: AOAM533BLsLe2RNOVY3Er92EYQI+K4BOJZHVpNjle7nxJc8G1QEvQ/YG
	VMFR+kDJQOIm93J+fzeBMaXWJWV2mLuVbA==
X-Google-Smtp-Source: ABdhPJxxBBegtxBGlYuNuQ/FpV6YBFMTqRHetd+WsnJLOn/88OX2/k0BEjsKIC39/pIzY1WdPVS74g==
X-Received: by 2002:a05:6214:96e:: with SMTP id do14mr57186721qvb.39.1637168775313;
        Wed, 17 Nov 2021 09:06:15 -0800 (PST)
Received: from [10.3.242.32] ([91.149.244.49])
        by smtp.gmail.com with ESMTPSA id k2sm209147qtg.35.2021.11.17.09.06.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 09:06:14 -0800 (PST)
Message-ID: <0dc4e857-b015-09a3-73c9-ffc45853dac4@virginia.edu>
Date: Wed, 17 Nov 2021 12:06:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
In-Reply-To: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
Message-ID-Hash: UHK24XPMYQ5ORBOZPJYXGGOX5GD3CFUC
X-Message-ID-Hash: UHK24XPMYQ5ORBOZPJYXGGOX5GD3CFUC
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why There is one phase difference in UHD 3.15.0.0, but there are four phase differences in UHD 4.1.0.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHK24XPMYQ5ORBOZPJYXGGOX5GD3CFUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1789672718280465549=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1789672718280465549==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SDJzazQ7j26xCSF2l7JdrR0q"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SDJzazQ7j26xCSF2l7JdrR0q
Content-Type: multipart/mixed; boundary="------------JxVtro1n1zZybCCpEVbAPJaB";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: usrp-users@lists.ettus.com
Message-ID: <0dc4e857-b015-09a3-73c9-ffc45853dac4@virginia.edu>
Subject: Re: [USRP-users] Why There is one phase difference in UHD 3.15.0.0,
 but there are four phase differences in UHD 4.1.0.1
References: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
In-Reply-To: <tencent_35F980DE62537DB02AB8CFD6@qq.com>

--------------JxVtro1n1zZybCCpEVbAPJaB
Content-Type: multipart/mixed; boundary="------------00jmAM0rOr0gfy0cCDcsM7WS"

--------------00jmAM0rOr0gfy0cCDcsM7WS
Content-Type: multipart/alternative;
 boundary="------------aUtHQOMOeBlD3wBov7hG0IxA"

--------------aUtHQOMOeBlD3wBov7hG0IxA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk1pZ2h0IHNvdW5kIHJpZGljdWxvdXMsIGJ1dCB0cnkgdHVuaW5nIHRvIHRoZSBm
cmVxdWVuY3kgb2YgaW50ZXJlc3QgDQp0d2ljZSBiZWZvcmUgZG9pbmcgdGhlIGNvbGxlY3Rp
b24uIFRoZSBYMzEwIGNvbW1hbmQgYnVmZmVyIGlzIHNtYWxsZXIgDQp0aGFuIGl0IG5lZWRz
IHRvIGJlIHRvIGhhbmRsZSB0dW5pbmcgdGhlIFR3aW5SWCwgc28gaWYgeW91IGRvbid0IHR1
bmUgDQp0d2ljZSwgeW91J2xsIHNlZSBwaGFzZSBhbWJpZ3VpdHkuDQoNCi1EdXN0aW4NCg0K
DQpPbiAxMS8xNy8yMSAwNDowMywg6ZmI54WcIHdyb3RlOg0KPiBoZWxsbywNCj4NCj4gwqAg
SSB1c2UgZm91ciB1c3JwLTI5NDUgYXMgc3luY2hyb25vdXMgYWNxdWlzaXRpb24gc3lzdGVt
LCBDREEtMjk5MCANCj4gcHJvdmlkZXMgaW50ZXJuYWwgcmVmZXJlbmNlIGNsb2NrIGFuZCBQ
UFMgdG8gZm91ciB1c3JwLTI5NDUsIGFuZCANCj4gcHhpZS01NjUxIGFuZCBweGllLTU2NTIg
YXJlIHVzZWQgdG8gcHJvdmlkZSB0d28tc3RhZ2UgbG9jYWwgb3NjaWxsYXRvciANCj4gZm9y
IGZvdXIgVVNSUHMuIE5vdyBJIHVzZSB0d28gdXNycC0yOTQ1IHRvIGNvbGxlY3QgdGhlIGRh
dGEgb2YgdHdvIA0KPiBjaGFubmVscyAob25lIGNoYW5uZWwgZm9yIGVhY2gpIGFuZCBjYWxj
dWxhdGUgdGhlIHBoYXNlIGRpZmZlcmVuY2UgDQo+IGJldHdlZW4gdGhlIHR3byBjaGFubmVs
cy4gSWYgSSB1c2UgVUhEIDQuMS4wLjEsIGFmdGVyIG11bHRpcGxlIA0KPiBhY3F1aXNpdGlv
biwgSSBmaW5kIHRoYXQgdGhlcmUgYXJlIGZvdXIga2luZHMgb2YgcGhhc2UgZGlmZmVyZW5j
ZXMsIA0KPiBhbmQgdGhlIHBoYXNlIGRpZmZlcmVuY2VzIGFyZSByb3VnaGx5IDkwIGRlZ3Jl
ZXMsIDE4MCBkZWdyZWVzIGFuZCAyNzAgDQo+IGRlZ3JlZXMuIEZvciBleGFtcGxlLCB0aGUg
Zm91ciBwaGFzZSBkaWZmZXJlbmNlcyBhcmUgNC41IGRlZ3JlZXMsIA0KPiA5NS41MyBkZWdy
ZWVzLCAxODkuNTEgZGVncmVlcyBhbmQgMjc1LjQ5IGRlZ3JlZXMgcmVzcGVjdGl2ZWx5LiBJ
ZiBJIA0KPiB1c2UgVUhEIDMuMTUuMC4wLCB0aGVyZSBpcyBvbmx5IG9uZSBwaGFzZSBkaWZm
ZXJlbmNlLg0KPg0KPiBTZXR1cCBEZXRhaWxzDQo+IDEuQ0RBLTI5OTAgcHJvdmlkZXMgaW50
ZXJuYWwgcmVmZXJlbmNlIGNsb2NrIGFuZCBQUFMgdG8gZm91ciB1c3Jwcy4NCj4gMi5QeGll
LTU2NTEgYW5kIFB4aWUtNTY1MiBhcmUgdXNlZCB0byBwcm92aWRlIHR3by1zdGFnZSBsb2Nh
bCANCj4gb3NjaWxsYXRvciBmb3IgZm91ciBVU1JQcy4NCj4NCj4gRXhwZWN0ZWQgQmVoYXZp
b3INCj4gVXNpbmcgVUhEIDQuMS4wLjEsIHRoZXJlIGlzIG9ubHkgb25lIHBoYXNlIGRpZmZl
cmVuY2UuDQo+DQo+IEFjdHVhbCBCZWhhdmlvdXINCj4gVGhlcmUgYXJlIGZvdXIgcGhhc2Ug
ZGlmZmVyZW5jZXMgdXNpbmcgVUhEIDQuMS4wLjEuDQo+DQo+IFN0ZXBzIHRvIHJlcHJvZHVj
ZSB0aGUgcHJvYmxlbQ0KPiBBZnRlciBzeW5jaHJvbml6aW5nIHRoZSByZWZlcmVuY2UgY2xv
Y2ssIFBQUyBhbmQgbG8sIHVzZSBVSEQgNC4xLjAuMSANCj4gdG8gY29sbGVjdCBvbmUgY2hh
bm5lbCBvZiBkaWZmZXJlbnQgVVNSUCBhbmQgY2FsY3VsYXRlIHRoZSBwaGFzZSANCj4gZGlm
ZmVyZW5jZS4NCj4NCj4gY2FuIGFueWJvZHkgaGVscCBtZT8NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS11c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==

--------------aUtHQOMOeBlD3wBov7hG0IxA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>Hi,</p>
    <p>Might sound ridiculous, but try tuning to the frequency of
      interest twice before doing the collection. The X310 command
      buffer is smaller than it needs to be to handle tuning the TwinRX,
      so if you don't tune twice, you'll see phase ambiguity. <br>
    </p>
    <p>-Dustin<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 11/17/21 04:03, =E9=99=88=E7=85=9C =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:tencent_35F980DE62537DB02AB8CFD6@qq.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      hello,
      <div><includetail><!--<![endif]--></includetail></div>
      <div><br>
      </div>
      <div>
        <div>=C2=A0 I use four usrp-2945 as synchronous acquisition syste=
m,
          CDA-2990 provides internal reference clock and PPS to four
          usrp-2945, and pxie-5651 and pxie-5652 are used to provide
          two-stage local oscillator for four USRPs. Now I use two
          usrp-2945 to collect the data of two channels (one channel for
          each) and calculate the phase difference between the two
          channels. If I use UHD 4.1.0.1, after multiple acquisition, I
          find that there are four kinds of phase differences, and the
          phase differences are roughly 90 degrees, 180 degrees and 270
          degrees. For example, the four phase differences are 4.5
          degrees, 95.53 degrees, 189.51 degrees and 275.49 degrees
          respectively. If I use UHD 3.15.0.0, there is only one phase
          difference.</div>
      </div>
      <div><br>
      </div>
      <div>
        <div>Setup Details</div>
        <div>1.CDA-2990 provides internal reference clock and PPS to
          four usrps.</div>
        <div>2.Pxie-5651 and Pxie-5652 are used to provide two-stage
          local oscillator for four USRPs.</div>
        <div><br>
        </div>
        <div>Expected Behavior</div>
        <div>Using UHD 4.1.0.1, there is only one phase difference.</div>=

        <div><br>
        </div>
        <div>Actual Behaviour</div>
        <div>There are four phase differences using UHD 4.1.0.1.</div>
        <div><br>
        </div>
        <div>Steps to reproduce the problem</div>
        <div>After synchronizing the reference clock, PPS and lo, use
          UHD 4.1.0.1 to collect one channel of different USRP and
          calculate the phase difference.</div>
      </div>
      <div><br>
      </div>
      <div>can anybody help me?</div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
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
--------------aUtHQOMOeBlD3wBov7hG0IxA--

--------------00jmAM0rOr0gfy0cCDcsM7WS
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
sFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----
--------------00jmAM0rOr0gfy0cCDcsM7WS--


--------------JxVtro1n1zZybCCpEVbAPJaB--

--------------SDJzazQ7j26xCSF2l7JdrR0q
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmGVNoQFAwAAAAAACgkQzXMYEbriuvVL
1A/+PGaYs1YbJJllpVUCiqskowXkcVKNSuM/wKBoZOt8OkyT2HYByEM1tYeFzpZAuNs5LQIfnnn1
9sm5QGkZcJCn+qe0ngExSbtxkWR6NXBCXHJl+ZiInw+uluayN1GvDmcBaBEu6arYyKYKCu86/trA
u/ulllFWXKCuY2Venu/qt+iN+/icUbklRP0lscu86nLg0vDUqeGDdWZFUnErQticZDs+hqikzxtP
FitFHe5LBbP5PmQFfTQFQSFF7OgegRk3HVUPLF0vQE5XaN2Fp1FnD3102DxgzHCa+otBB8pfyW/J
9hYb0Ai9B0RcAD4NJim+PFDsiVOYL6jgBeR690f1rPMfH7GSZvXWeVueTAgs4DCjQdSPlYHmnJxe
DL54ZgUu9ShAF+++YTVOtMiyWb9bPh+Z+0rQvW/QRaLAHinq0E3kjkKFo/ZZNGNl/mqx3bxjBGuS
SOJYB6TXSQkvz+GfJajp/rPJ3SVVsbL4NmtBSmuWDRAXyHhFD3t312GSj43Mpka40XqPlmDptHFx
wTLkOnkPehznUfeSvSG5ekQ0bSuhm+jQop3+XmrEZSLgJyy6mHF8blxNBi81F57KPaM4se1551Sd
sMu9EFqL1ED1Qdo+Gr0mRztep8dLfgAMBlUKHr+RjX86N7BOz2Z9vlkqAwqvo1kHki2acKcVqA9Z
62o=
=jaHo
-----END PGP SIGNATURE-----

--------------SDJzazQ7j26xCSF2l7JdrR0q--

--===============1789672718280465549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1789672718280465549==--
