Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F241F12C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 17:24:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13ECE384E81
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 11:24:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="X9nQ9EnI";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id DBDFB384809
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 11:23:58 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id a13so9259059qtw.10
        for <usrp-users@lists.ettus.com>; Fri, 01 Oct 2021 08:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to;
        bh=WR4nBmMvmKWa7Uv80qOIDl+Fi8GaPEf4Xb6N8ALQkqY=;
        b=X9nQ9EnIRzLbqMnLevFiHgSDkCfQsgziRRCBbXT/EGYYxSRSUi7+BOSmveqGOoYUjW
         mjJpdMCO3dx2xAZ0LP//8/T+lg4DrEHpV9yhLDgD0MNtfMZdjVdUJF3xgmvrB9csPeY7
         lF3CcEtOFoAQVmroEz6iNqOpyYhTAmuNFXuFcDhJLfhmwUgNKUKsO2X9fnb/MgfkUxyX
         PESS907Wze9uSV1dNSCDTQLDIs6wHO3rDCrzd366VXh19XtMhx38A/owQrTNADgvY2oU
         0WwGta1Q5QlznvvuxEgZJCVLiRVorTcELkWwd4EHNEOURnkrh4s5EY2cKuFJZPBVaPsl
         DpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to;
        bh=WR4nBmMvmKWa7Uv80qOIDl+Fi8GaPEf4Xb6N8ALQkqY=;
        b=OvdWQPjOExyqRNCDKGkwTU4bq/TrnzjPdXNpHqeX88Xhttwv6FIhZcqTWQdJxNsGLI
         RnIe7aEOaiUUb1zdqD6+g4zAudNNDf0QwtwMtJ7Cor0uMk373dmCK2mtvtuw8ir3sF6S
         AFKRVyqfM/rP3WcGtOcgvY5JdU6+KubtTOxoLfe+yf8JrVm7F/yZVrM+B+SwjX/WFy4i
         uYizQ3/AdotAn/D2GvqePmOuyyQhXvCXB/EUtey22uipT2YCVBaWwgu30hsUoYVsXq+c
         eHEZBTPT7H1f/DBkC73hu1u2oor1myfuL7RX9gJ2m+vb/tQkWXmKlbfsvzq48PX9GS+B
         Pcjw==
X-Gm-Message-State: AOAM531eAm0dU8Ka4RT4jIL+9fN3O+pKPD2khN5Noyh1p9snDw9zHu/R
	oqoWP6/JCU8C0XCk6nB0wNBFx6/ldrjhtw==
X-Google-Smtp-Source: ABdhPJyDwXXnZUlmO4CNmp2XUiz3rZUWKIHyhR4YALZ2QnvB6C24OJYHeBPyZECOwy+MfWzSRMNq6g==
X-Received: by 2002:ac8:4618:: with SMTP id p24mr7422450qtn.24.1633101837958;
        Fri, 01 Oct 2021 08:23:57 -0700 (PDT)
Received: from ?IPV6:2601:5ca:180:77c0::65d? ([2601:5ca:180:77c0::65d])
        by smtp.gmail.com with ESMTPSA id k10sm3232543qkk.124.2021.10.01.08.23.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Oct 2021 08:23:57 -0700 (PDT)
Message-ID: <4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu>
Date: Fri, 1 Oct 2021 11:23:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
In-Reply-To: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>
Message-ID-Hash: GU2D4V3VFDKCDSK5N2CVPWMKIKK42WID
X-Message-ID-Hash: GU2D4V3VFDKCDSK5N2CVPWMKIKK42WID
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change mtu-size
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GU2D4V3VFDKCDSK5N2CVPWMKIKK42WID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0037402566453357274=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0037402566453357274==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DUHX5jzPV4FbdRjlGRlcWyFN"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DUHX5jzPV4FbdRjlGRlcWyFN
Content-Type: multipart/mixed; boundary="------------qit7W3UxibTE6HdOdLFjKVTt";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: usrp-users@lists.ettus.com
Message-ID: <4c7f7514-27d4-817b-9e5f-542f4454296d@virginia.edu>
Subject: Re: [USRP-users] Change mtu-size
References: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>
In-Reply-To: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>

--------------qit7W3UxibTE6HdOdLFjKVTt
Content-Type: multipart/mixed; boundary="------------In2MaTMnJQt6S0ye6ntCfZsE"

--------------In2MaTMnJQt6S0ye6ntCfZsE
Content-Type: multipart/alternative;
 boundary="------------VvH6EGOtHGoVjwE0DNug4S3o"

--------------VvH6EGOtHGoVjwE0DNug4S3o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFya3VzLA0KDQpUaGUgd2lraSBzdWdnZXN0cyB1c2luZyBhbiBNVFUgc2l6ZSBvZiA5
MDAwLCBwZXJoYXBzIGl0J3MgcGlja3k/DQoNClNlZSB0aGlzIHBhZ2UgZm9yIHJlZmVyZW5j
ZTogDQpodHRwczovL2tiLmV0dHVzLmNvbS9Vc2luZ19EdWFsXzEwX0dpZ2FiaXRfRXRoZXJu
ZXRfb25fdGhlX1VTUlBfWDMwMC9YMzEwDQoNCkl0IG1heSBhbHNvIGJlIHdvcnRoIG5vdGlu
ZyB0aGF0IHdpdGggdGhlIGRlZmF1bHQgSEcgaW1hZ2UsIG9ubHkgdGhlIA0Kc2Vjb25kIEV0
aGVybmV0IHBvcnQgd2lsbCBiZSAxMEdiRSBlbmFibGVkLg0KDQpSZWdhcmRpbmcgY2hhbmdp
bmcgdGhlIE1UVSBzaXplIG9uIHRoZSBVU1JQIHNpZGUsIEkndmUgbmV2ZXIgaGFkIHRvIGRv
IA0KaXQgdG8gZ2V0IHRoaW5ncyB3b3JraW5nIGFwcHJvcHJpYXRlbHksIGNoYW5naW5nIGl0
IG9uIG15IGNvbXB1dGVyIGFuZCANCm15IHN3aXRjaCB3YXMgYWx3YXlzIGVub3VnaCB0byBn
ZXQgdGhlIGRlc2lyZWQgZWZmZWN0Lg0KDQrigJREdXN0aW4NCg0KT24gMTAvMS8yMSAxMTox
MSwgbWFya3VzLmZyZXVuZEBldGl0LnR1LWNoZW1uaXR6LmRlIHdyb3RlOg0KPiB8SGVsbG8s
IEkgY2hhbmdlZCB0aGUgbXR1LXNpemUgdG8gMTAwMDAgb24gZXZlcnkgZXRoZXJuZXRwb3J0
LiBJIGNhbiANCj4gcGluZyBteSBjb21wdXRlciBmcm9tIGFub3RoZXIgY29tcHV0ZXIgd2l0
aCBwYWNrYWdlIHNpemUgb2YgODk3MiBidXQgSSANCj4gY2Fubm90IGRvIHRoYXQgd2l0aCB0
aGUgeDMwMC4gSSBoYXZlIDEwR2JFIENhcmQgY29ubmVjdGVkIHRvIFNGMSBhbmQgDQo+IHRy
aWVkIGJvdGggd2l0aCBhbiBYRyBhbmQgYW4gSEcgaW1hZ2UuIFNpbmNlIHRoZSBpbmZvIGlz
IG5vdCBjb21pbmcgDQo+IGZyb20gdGhlIFtVSERdIGJ1dCB0aGUgW1gzMDBdIGJlZm9yZSB0
aGUgW0dQU10gaXMgY2hlY2tlZCBJIGJlbGlldmUgDQo+IHRoYXQgdGhlIG1lc3NhZ2UgaXMg
dGhyb3duIGZyb20gdGhlIGRldmljZSBkdXJpbmcgc3RhcnQgdXAuIElzIGl0IA0KPiBwb3Nz
aWJsZSB0byBjaGFuZ2UgdGhlIG10dSBzaXplIGluc2lkZSB0aGUgVVNSUCBhbmQgaG93IGlz
IGl0IGRvbmU/IA0KPiByZm5vY0ByZm5vYy12bSB+L3Jmbm9jLXdvcmtzaG9wICQgdWhkX3Vz
cnBfcHJvYmUgW0lORk9dIFtVSERdIGxpbnV4OyANCj4gR05VIEMrKyB2ZXJzaW9uIDcuMy4w
OyBCb29zdF8xMDY1MDE7IFVIRF8zLjEzLjAuSEVBRC0wLWc1YjIzNjc3MiANCj4gW0lORk9d
IFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uIFtJTkZPXSBbWDMwMF0g
TWF4aW11bSANCj4gZnJhbWUgc2l6ZTogMTQ3MiBieXRlcy4gW0lORk9dIFtYMzAwXSBSYWRp
byAxeCBjbG9jazogMjAwIE1IeiBbSU5GT10gDQo+IFtHUFNdIE5vIEdQU0RPIGZvdW5kIFRo
YW5rIHlvdSB2ZXJ5IG11Y2ggTWFya3VzfA0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG91c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
--------------VvH6EGOtHGoVjwE0DNug4S3o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>Hi Markus,</p>
    <p>The wiki suggests using an MTU size of 9000, perhaps it's picky?<b=
r>
    </p>
    <p>See this page for reference:
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Using_Dua=
l_10_Gigabit_Ethernet_on_the_USRP_X300/X310">https://kb.ettus.com/Using_D=
ual_10_Gigabit_Ethernet_on_the_USRP_X300/X310</a></p>
    <p>It may also be worth noting that with the default HG image, only
      the second Ethernet port will be 10GbE enabled. <br>
    </p>
    <p>Regarding changing the MTU size on the USRP side, I've never had
      to do it to get things working appropriately, changing it on my
      computer and my switch was always enough to get the desired
      effect. <br>
    </p>
    <p>=E2=80=94Dustin<br>
    </p>
    <div class=3D"moz-cite-prefix">On 10/1/21 11:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:markus.freund@=
etit.tu-chemnitz.de">markus.freund@etit.tu-chemnitz.de</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <pre><code>Hello,

I changed the mtu-size to 10000 on every ethernetport. I can ping my comp=
uter from another computer with package size of 8972 but I cannot do that=
 with the x300. I have 10GbE Card connected to SF1 and tried both with an=
 XG and an HG image. Since the info is not coming from the [UHD] but the =
[X300] before the [GPS] is checked I believe that the message is thrown f=
rom the device during start up. Is it possible to change the mtu size ins=
ide the USRP and how is it done?

rfnoc@rfnoc-vm ~/rfnoc-workshop $ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501; UHD_3.13.0.HEAD-=
0-g5b236772
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found

Thank you very much
Markus</code></pre>
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
--------------VvH6EGOtHGoVjwE0DNug4S3o--

--------------In2MaTMnJQt6S0ye6ntCfZsE
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsFNBGDttsMBEADF8hwUXfCrCarvQhbXiPRMgmnghZa63+TlqzLIeLadiFV+8jay3gkwv/90e=
mQ7
tMMfEYJzMwfSE4oq8RMV0aJHqWsdaHLRXNEAYN7Ipn64wr4dnT6GCAfeVdGmY7Z19Ky8vu+ej=
wQH
8q3YFa5LvCAh4i5F/dcnbnh0ItBQJtvll7ubcVDA3mijQzEaMUVpehg3ROdrmphWilLSH4aLB=
SRS
nVvCPAF3pVFsZ2OiiyX6CkMpmbHkb2YMIwB9zlBotsMj/TIvIwptKw3CAP4cUXRu4nlI5Yhcs=
GNY
8QT7r/OvsduKmA2LaKyvWwHy0crqt25R6pAXUV7mNEAhu6Al+tK5/Y4Xq7+OJktCrM/rmzfGc=
B90
rDTP2K6KETJ2Pq7hYJdLdifAptjszbvBXaZ5Rro+vsyBy49WvgEjA51p0TPnpJSbwl0XY3rNO=
ZKN
OprpUi9MnYj9PdlWXy4hoGWozQlSbWtIbBVpaDWfUm62movTN39H3UrmVEMb+qw85S7NBEJId=
uNM
+SSbalNsVWd36S7d/SiAbGIkGxrYIiPexlS4qyukwd75FGwdWWIMOntNeW5PDf+hOGQXbPuly=
Mpk
hwHNeMEt2SkJVn33scSZnxfEh7LbNyfdKvL14qbMsl9ZhZmYNv7+gSKqfwd+Sosgai5nQpnoy=
xXK
PGV3/ssVXYatlQARAQABzSNEdXN0aW4gV2lkbWFubiA8ZHcyenFAdmlyZ2luaWEuZWR1PsLBl=
AQT
AQgAPhYhBGU6hGXx/qMjN4ZJr81zGBG64rr1BQJg7bcIAhsjBQkDwmi9BQsJCAcCBhUKCQgLA=
gQW
AgMBAh4BAheAAAoJEM1zGBG64rr160EP/RJ4lmJh/T4KT3iaUHs1cvfkXtwAubX3pFWAZ4/nv=
/BT
K5k0qWSte2qk8IWXgCWFwNVkZqxl2a+6w+MZBrRHwMO3oLbG4J13FGLTd3fiB5yzkraxaCCGA=
rjO
yxwaXxNLRWBuqt82dXMngNL6Fd6wVlrCT6BtoOa2x271alGhVhrIw3lcKTrOOWWV0ZhebURHa=
7y9
UycFazfGRtW8LmuIWxnQEuduvVAtgPGJTtq8Jzsd3WwyWOidcOKjtCQaY/FH/o2kq5qwq6cka=
onY
GXTEUeerBPISS1+gE1qAfk0DAHFPsXDxS+Obx7pXdp2oRCthKAk0vh9uxhgRvE/WVh5zLzL4w=
JFp
iuFh+w7L0+h+tnS7Vhl8QFDXkB+36s3HIF5HKX0u0yC78SKuCarBTbk2r56bRdce5aGk06qpI=
pHe
Tm2NLfD2E1FPPHAThIEvv1uOM0e89ocH8ChV60I767X4Iso6YbpPZpGmEt1vmiYqNy1Jdcd6u=
otR
PF8g/m1UGQ9RnapQ6eQ2k2B5Ul5lFsuwS70ooZacY5vcFbRdZ/WVBkYr4YSk0oog76MkanAB8=
Rit
316R50Fy0HnWB4WkfW/tvFNDsLDTmhluDZ0VbuJ8hyWFBofhZT6vAn7CckjtFdmPMlq9A5JuS=
9Re
Bxa3ON+ES+L6BxC1O7wpPJnRxSYN9G46zSVEdXN0aW4gV2lkbWFubiA8MW0uMG4uZjFyM0Bnb=
WFp
bC5jb20+wsGUBBMBCAA+FiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmDttsMCGyMFCQPCaL0FC=
wkI
BwIGFQoJCAsCBBYCAwECHgECF4AACgkQzXMYEbriuvUvcRAAkp/LyPZe1HFWdtrGonAO2knHG=
EZz
SNmgsobjYuaLjO8p3lIW0t1fJIzoR7FLFG+QwAxFsg+WDNJOZz/5sMzzTIxqL4x/mie24lWdQ=
7hA
/nmxY5XW64uybz/EQFrT73tU+6XD9PBimsp2Uk2BxBYvE+xtwiJTTy1Sne+kXPZXNq82+eWII=
PUj
x5itMpj9Eg3IVQRqyPCYR3HxZ0hwqPEEzdRVPNzZXuKQo0AG3hMNCchRg1zxmLmSKPYA84I74=
qd/
G0tRMtqizwojbhApjvdLUO6pVw+NOQQqQ//YUiDtcZG6fE7ssfcGaaP2q7WSDBwX0iDjrn0jd=
3O4
4oZvQwvDAYTS1E0OPO/yDlEbvF85S48JKN5upK5cGhPxIYEjFQm3V0QbmB5OCGpU2XXNgxkAs=
Xq2
CvxixVUIoVIl3fqJMYMIkzZlqSNjcnO5RFt7+hzojkPATlj4Il2ztTA0ofDgs1rB72GWuaWdb=
m1y
GCNbbR2jkJB0u4Iu9ljZQYQfXbTWcHAlvK69lHj5mvJvjMQVHOi2J0EwvEx9+SQpPuy7wmj1N=
PW2
z2FCgISzzD+dUli6PrRAhqPJ7iiEsgi7mPBgzGpfPO8/jLMqHskT/5z69LRemrzLjdXY2bJoi=
OLg
JNd6m9OLj1TpQyIW9cBRH7m7+cOX+oqE5Fg14IWrgd5v39vR1QPVAQEQAAEBAAAAAAAAAAAAA=
AAA
/9j/4AAQSkZJRgABAQAAAQABAAD/4QAqRXhpZgAASUkqAAgAAAABADEBAgAHAAAAGgAAAAAAA=
ABH
b29nbGUAAP/bAIQAAwICCAgICggICAgICAgKCAgICAgICAoICAgICAgKCAgICAgICAgICggIC=
AgI
CggICAgJCQoICAsNCggNCAgJCAEDBAQGBQYKBgYKDQ0KDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0ND=
Q0N
DQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0N/8AAEQgAjACMAwERAAIRAQMRAf/EAB0AAAAGA=
wEA
AAAAAAAAAAAAAAACBQYHCAEDBAn/xABDEAACAQIDBQUEBwUHBAMAAAABAgMAEQQSIQUGMUFRB=
xMi
MmEIQnGBCRQjUpGhsWJyweHwFTNDgpKy0TREU6IWJCX/xAAaAQACAwEBAAAAAAAAAAAAAAAAB=
AEC
AwUG/8QAJREAAgICAgICAgMBAAAAAAAAAAECEQMhBBIiMRNBBTIzYXFR/9oADAMBAAIRAxEAP=
wD1
ToAFAGKAABVGyQhqvUgwKsokBiKuTZrd9f6tVbCgpblr8uFRdkNBgfj8atRFmbVPUnsDLQok9=
0HA
oZFhgKigAKkijNBYFAAoAFAAoAwaqwCZqiIBGetSwQYgc9La+hHpVOyChr7+dp2G2fGZJ3VbA=
M2Y
gZFJtnfmFJ0FgTes5TolQsgLeD2+dlBQYDK+ZmTvIkD2yaMyK2hUHiTWHc1WMYGP+krhw3glw=
8c7
EFo5kkIRh92UW8DjmtrCrdq2afFY2NmfSqF5bf2bhhHe2YYlr2+FrX+VHyB8BYvs89tXZWMVR=
MXw
sjDN4xeI/uuOP4VHzGbwMl7YXaRgsSQIMRHIWBKhSbkDjqdPhrVo5rMpYmkORJdL6fwphSTMu=
ptV
qGSGBqqJM1cAUACgAUACgDBqGBqvURRCOfFSBfESFCgsSSAtgNSxPADrUTlSNEVD9of210wYe=
HAO
Da6/WrgjP92Me8P2hpSDyNsYhDZQbtE7X8btBhNiMRJKwch8zfaFDwzDhl6C1VnJjnRDSXFtG=
igl
o0diUUjUkcAijXKfePCogHVDWgwUkkzTm5z+6dACNCQvLSn0tEiphthQE+C6H3mYXUnoAOdZy=
ivo
mx47tNLGAqvK0Y4XIKZuh5qDwsaRmqLLZLu6Pa1isIRkndT70Mgvhr8rZbMcvKxpbvRWcLRcP=
sR9
snCzhMLtAiGW4VZ/8AnkGPuH96ncOVfYnLGWqgxAYBlIIIBBUggg8CCNCDyPA10lJMVaNy0JG=
dmy
rEgoAFAAoAFABWNAHG6i3PrccR0A+P51ZyJRS32yPaT7vvNk4OT7d/BMUPhww94yMOMhXQw+U=
DWu
bm2xmEShW8uBeWRBb7OIcSfMTxky8v3ayjGhpaEnDYGOIs3jZuBZ1FjfhGD73W/IUORohLx2N=
+1E
sjM3djKTyjJ8sScrHqONSpB1NeHlObMD3ZW7MG10Pum/41s56LKNbEXbM7eZMyEG5101529eP=
pUx
dg0KW6W9syHK5JRRcSjytfm6c+l+IrLKtFookvEb9SxLG00aSYc2Yuo4KONuYA5txrkv2buNo=
cUW
KhD54bmCYBnjOosfet6deJqGhdotZ7IXbzJhsSNk4yZpMPNY4OWQ6ws3lhzHzLJ7o9y1dDj5K=
Mcs
NWi9UP8AL+ddhSTRya2dFSSCgAUACgAUAFcVAEY+0L2m/wBkbIxWNXL3kUZSBW4NO4tGptx43=
+VY
ydGkFZ43b57+SXIDvLipD3uKluO9YyG4AJ0BF8pJ90WrH2PRiImwu8Z888z5mYBY06ngrX9OJ=
GlW
a0XHZt6SEobG6KoRVQEEEnURk8RfjzvScolkNbbOx2doVUBEW10J8OYcGk5k9DWaTNkYOCc+I=
gs5
zFQSL9Lt1HStH6NPobeKwTlvGCARbTW/p86I5KBRO7dzCZmZlUKqi1rHxE6AKDz61TJlTNVEk=
LZR
LRGB1JMYudLkqfTovOue/ZajfsAGKJ0YkyYdg0J4d7C/Mei9K262heWmKmIxUodZBKy5CJYcr=
AGN
k1buzzMltb8OVqzi6ZWW0etHs879ttPY+Dxr+eaEZrcCyHLcjkTbUdda7mB2jj5FTJLpwxBQA=
KAB
QAKAMNQBVD6RfHiPYcdzxxuHBHUFG4/A2tS+RaNsXs8nosO7PmK3LlmlN/ExuQqHooFjesos6=
cQr
7S7prC7zucoNvIP0ygaZqspJsOrFjdnbBLKZnyk+GGJQH7vWxaQcs35camSRbox0DDtKWs8YS=
9s9
vCmX754/CsaQdJf8OhNmxLAXYm9iFuLH4n0PKqyWgV3sSMBgmeyqPENbEXIvw/GuXlbQ3Akbd=
/s4
VYRI4zSZrMqjVb8L8rg60kpuxnqcmGk+pzOkg+38o08yPwHzHGtpSVWZuLGbtTeFe9MrDMgUI=
6jQ
hc2gX0B1b0pzG01Qlki17Fk7bjkKoci906uGt4WUjS3p161V4mndFL0enPsPTn+w40v4Y5HCC=
1sq
sb29dTe/rXX49NHMzeywwpwXM0ACgAUACgArmqsCrX0hWz1k2CpYeXGYf/a1x86zn+ppj9nlh=
g8I
JpxELgZjmy+YgcAvU9aSXo6mMecvZR9acQRreeRSdAcmGw6+d5G/8jcQL1SD9jQ/d3uxrD50T=
Cws
YcPb67icpLSk6ZYyfMn3svAVPcvGRMm1fZgweJyDDv3bWDN9V5DlfNcH51XuMpWdG73sSQtL3=
uJx
OIljUg5HI8QXW3h/So7lXjsWN+uwnDGIjBxJD3ZzZshzOvvLf4/hSOaRpDFQzt08LPs+R4cTh=
e+h
m8EiHwPExHhmidtHsNbCuRLJQ6sYTa/YsccRiDh5Y4sOSwZ/7zFIOD/s93w141lPNov8dkA+0=
L2X
nBoJVyq5e0qe6Mw8HyItrwvXR42bzQjysdoizZOMZQQPFI2REB62JcfK2lehm7iclKkz2H9hr=
GCb
dvBYgLlGIR5AP3JDGSf8ymtONGonJyvyLAU4YgoAFAAoAFABXqGBXj239hNPu/iCB/07JiW5W=
7u4
zN0XWspfqaYzyw7O9iAbUhjYm7nvByIuLn4f8UkvR1MZebd3dyFSPCqllsxCgFv3vvVnH0xtE=
gbO
2cigBQgX7qABRfjZRwB59axo3ikOvZ+ykQBoxGg4DJofUEdKrTHMdMWIEewAAF721t8arTGqV=
BH2
UHuHVgp428v9Hn1pbJFsraQXGbt4dwoZFlyeXvBmt8CeFq5eTEyVM4dpOuUqpuRpbTRefy9KR=
yQa
QzCSZCvtC9mMeP2bMqxjvoonaM2sbIC1ife9Ola4JtOzDIlJM87dw9gzzTRSRqHUSRqy8PtAG=
BF+
RHPrXqPl8UclYrbPZT2O9itht3dnwMLPFHKHXhlZp3a1uWhH611sEk4o89yYdcjRNVMioKABQ=
AKA
BQAVqgBo9pW6Ix+AxODawGJheI34agkE+l6pJeNFoPZ5A7u7Ilg3nwkTqVYpLmVtSDHdQSeGo=
UWN
I1R14KlZZ3bG8UqvlRkuABYsFOvDQ/rWcTZTTEmTeLHJdop0jbo3jB+GWr9C3Zijur2y4+Bsu=
K7h
1B1ysAwB560fEyY5qZP+6297ToGRWP8AlJtp1H61jNJD8Mtjc7RO1p8AjEq4k5KRe9+BVB4mX=
qw0
FL6lomUiHJu2na0xOaWDDRHXKXUMwP3evyqXxm1ZmmxQ2XvK8nvsS3gOWZb68zr+VcnPBVQzj=
k0y
R9nY8tBI82ZEhBSbPyULqb+8CvvDSud0aRtjfuyBfZf7JsOuIxeZe8tPLiIXH9yIcQSYRD1cj=
zng
DXXuUoxoMEU5M9B+yPZ3d4KJdbAMBfiRm971vz6V3uJdHmPyTXytIfFdI5JmgAUACgAUAYY0A=
czW
162P6VVsIrZ5o9sm7cke8YxeGwqTzQJJmjkkMcckDXyKrgefPxFJTZ368RY2luu5hFxF9YdRI=
7nx
90z690H94RcKWT2ZxiM/a3ZDiHMbQYmQSC4c2yIwPvgD7vJedbdhjroe+N7OokVLsJfs8jM6W=
dny
+InoL8DTCloz+PZn2dN3RZnxcuMU3dIxDi3EZW5GYjlppXK5E6OthwuSoc2C3TaPaUyMGmg7v=
PEZ
5i86H3RFfjCR/eAVy4ZtmmTC4iLvV2Lw4pApQrkJkDouZlzcUA5DnflXcjmuAmrTHbsTsswsc=
cbH
DW7hVAt/iluDOeZB/CvP55eQzji7FneTcOHGTGXENM/1eFcO8UUpjhMpNxGyrpLZCLk8tKWyu=
hzH
DVC7ujgYcOixQRKhJNwBYRxrxI/gK1w5fo0ww6tk+9my/wD04v3Wseozmxr1nFXimeL/ACH80=
v8A
R2U+c0FAAoAFAAoAK9AGkroepH8qq0Snspp2h4B0x0hFg0MrBibXKEXAF6TnE7sZeIkrhBlHd=
hNH
LWe+Yh9WVTw49aUa2a40KOCklHlwUrcgwkjygfDjQMKIfeDC4h42LiPDrlIutjOBzyny2P40w=
vRC
9iJuVs0rqosh8nqPQdb6m+lcrkKzv8SrVj3lwOdlZiySRkd1KbXAbzD1DcwdK4cl1Y3nUWOP/=
wCP
YseV4Tz4W4j+NdXFN9Tk/GrNmD2RKrZpJjwIKC2QjpSGV3IYWPRz7VVBEEjQRIl7WJ48SbnUk=
nma
WzO9GiagjZu1hu9j7uNGeZ2BLWNr+7c8hbjyp7jcdvZzc3KUNk/7u7O7qJY/urr8ef517DDHr=
BI8
fnyd5tisK3FzNAAoAFAAoAwRQBryfyqbsp92Q32r9jM2KczYZ4872zxyeFSeTBxrc8LVjOFnQ=
hmS
VEAYUlHMUos0btGwGviU2YD0vwNIPTOphmmPDY7gcALVXqPWkji36kBiIGq3BZbWNh0b+HOt1=
6MO
2zg3R39jQZnyLoFJIvYA6ALyPU0nkxP2PY8yWhwYzeVpZQI4S8bLYONADyNq4eeFMcWRyJJjP=
gXg
TYcfh1ohkSVFkmI2N0PO/H0tS0pJs2WvY2t5cXy11BIHLhzrBpuSE88rWifdw9kJHhYiqBWaN=
Cxt
qSw1ua9xxMSWNf4eL5OaUpNDmjQj/j+v0p50kJRT+zbeq2XM1NgCrACgAUAYqAMGhEM0znTh6=
/8A
H4UMmJU/t23c+rbQaRRaPEKJEt94f3h+ZpCcN2dTDKqG9snGG1UOi52b8Wkj6DRTzPCrWTFWd=
O7O
5wDZvs3K8tDx9KiW0O48ex+YPZ6oLkrHblnUA/AGuHyEPqFGxtuoCFzIS/lGYX/CkOoOTR0Yt=
gFv
bhxN9KXkqMlk3sae0AO8APvNGo+BcX/KhPyRSTuLLQYKIKigcAAB8LC1e7438aPD5tzv+zqFM=
eyg
a9HUkwWqaAF6kA1AAoAwaANdQiPZqk1P9afEc6sWRGfbzuX9awTSRgCbC/aoTYZlUeOIkkZVb=
j8q
yyR0MY3uismwdqKRa+nnzE8F5rfnroK5x00F3y2FJKoKTPHzGRzlAPJvU/lUWO4xv7OwpjIWW=
aeP
qyscw9T1BqOx1cNJ7HLsjZUMzBbyzftvK2YfKuTyGdDsiRdlbj4SNQMpZrXDsbsvoDypCzCdG=
/F7
WyAixITgDwboW60rkYm4jY/tbOzOCWSA5wbatMviyg81A5VSL8kCjcWJuy/pHYIXZcds6SNFY=
qHw
8nfPIV0ZhGAMtua30r3fGl4I8dnx1NomHcH20t3dogd1tFIGYgCPGAQyEnkqniR0vTSYu1RNc=
WKV
kDo2ZSLq6sCrA8xYm9Xsg3rfr/XwqbJNbR/H/VU2Bv7z0NQRQEmv6f1xoICtiR8b3t626VAUM=
rtG
7admbJhM+0MbBhUUXIds0nw7pLyH5CrqDfolRKSdsf0q8YJi2FgjMeC4vGXEDX0DRopzgjiM+=
npW
yxMtRTvf/t+2vtSQTbQ2lipzGweKAN3UCNmF7CHLnVLkWa96vPC3GjSGpIszs3bnchHN/q8qx=
uki
6rE2UXD34pe5HrXCnDq6Z14uyTN3940mAu114g+63qbflWTjQxCVD32fhYX0OUnk9rn4Hlasv=
o6E
HfoeWB2dDGnhUX5kAXrnZoNm6bX2JG3NsxIL6rYaknU+vQVznFoHMiybe58XIY4WLLqMx8gPx=
HE9
LaVg8bkZ9h54fCiKIKDoijRuBPFiedzwqkodHsbhHRQvtd2Q2B2hiIlJW7HExML6d8bkC/Ic6=
9nw
pd4I8vy8VSsaTYtZAGdFVhrnyi/rkNrgnjeug4tI5N9mPPs57aNqbLkzbOxuIjHOJmMiP8RJc=
D/L
VSKLU9nX0keJjITauz++BsFlwVw9h5ncOQthxIGtWRVlnd3va12Bi4lni2imVuRBBRh5kYNY5=
lOh
I0osrZMTcdb+lakka9sPtAbJ2InebRxaxGxZIEs2JlA4mKIG7KOfStFFv0Qef/bl9JntLFlsP=
saM
bPw5DD6xIufETKecQ/wGHHnat44iSm+3N5Z8VL32KmlxEzeaeeQu5B4kMTprytTCgWs0xxoik=
g+K
/wAyTxv0AGtbKIWc0eOuwtYAcCfKBY3a/qalrReL2Xg7FcX9Z2Rhe9TPmjIkB5gMfEPlXnuRH=
yOr
jBi9kS4VicJIwW5IifygHpWUoaByoUcH2u4iAZWhYE8T7n+rlWfTQxHNSFEdt2NcWjhH+uksu=
M3W
ezs2bhMdjyDiG7uI692p4j9tv4Vy54zZTskrdfYiRDLGFyqOQ/q1LuNG0FYp7XW6689KS5LOr=
FaK
m+2Dsfu8Thp1FxJCY2+K8K9T+Nfgec5qK/pjDYjS4OgPwrtvZ56MdmmLE3Ot1bqHtVKL0dEW0=
JBp
nc34KTovqp5350UU6naMR1Qk8zGbL+A59aKI6F3vaH+kRPjwuwVu3lOOlBLaj/tE+8Dx7wVsk=
ZFA
97HxWJmafE4hppWuzzSuWYs2rWBJya8VSwvTUAGrO6A2Mmc+it+ppqLJOWa19KYA2NfnUAaG/=
gdO
XA0Nkx9l4ewCS2zMF0eDN/7kVwOR+x1sLskPa+ADpfmNPwqK0GRCBAFAKMLg8b6/rQlaM60Oj=
YOy
IbA2/KlMsTSA99m4YaZB4a4+RbOljQ6tnYIaW4c/jSczoQVCdvGulh1rncmI/eiu3trQWwuHk=
t5G
jQ/5q9T+Nj4HmuZLZUbgHruUcJugYZ+PwoojsHmbQCoov2OuGawtU0Ws5NrbSdJxChyqyqxYD=
x5m
NmYPxBI51ZCpqmgUKDYXJcEn9k2v8TzPOtEyBOxGAVrk30vzreIDbxa2OlPMqGSUka1Vga2/g=
f8A
aaoyUXU7A2//AB9mnn3Lj5BzXC5H7HYwE2YDDgoLjiKn6N8gi7TwKh9BV4+jL6O/YHTlS2U1g=
iQM
CtrW52riZfZ0sY47ZQLUmx5ehKxC5jr1pLk+zR+iAvbijH1IDpLhrV6r8b+h5rllLkPhk/ft8=
q7T
OHJgw3P4VUgNiD4h8qDVB8UdaC5//9nCwZQEEwEIAD4WIQRlOoRl8f6jIzeGSa/NcxgRuuK69=
QUC
YO2+0QIbIwUJA8JovQULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRDNcxgRuuK69YoBD/0Vp=
yAa
hKsOhFvttKsWzilOkuJlsk1kUNBUKiEgHfA6S4CliiLsOFXBm6SBbPQTV/yMhOGWal47d92ks=
6BS
Bc4ujKKZID/BxpSmCLydelEn6AXWYaTcIZ8XSwzCdi+Whl/vMJYjIlaBMPiskfQmzxuQIeyxW=
DsF
RJYxVuX1qX7IGMFf6LDSmQD/5r4srGY34Qn5ivvBIegxhl3+TpipSXRdQbFGEBClykESjRpdV=
OvC
/Al9J3SJXLGAyVsVuClv/IdUWaAbGGCgA3+8aNxw68uXv48CuU+3kGeJsQVp+1vTaj4+rmkfm=
jSz
whSix0/BNfMO4vt4AvQL+bGuBWeVwlcOwfFZLMwwBKsLWYQAak4byzRHW3kEVepdkuYLavabp=
qmD
IxTuf4J4OYfMTsBTxv+YwQlRdVT+x60F1l1CudHUtTxAfExVSrJp5tRqhPGBj2n4e3xXTfFYZ=
ouZ
6cHIGbzJkKk8EQQ1f0Z6BpdA5FH3NTFvnm2PBE6gbzNUA02B6tMqQvk2ratMAi8SI9EoGlwa3=
rbW
K0YuRQ7w4EPdSv9n4daGCDLqnZc2cGKBnSOBoZc6nPyheLMt8d6n0Om1AptjBFTuLCX5h1B/Z=
+06
JtGQw4S47ysriQPLB3jMRz8zTcEZhx2iyeAR3hF2mrPFcvh3VyXAVPb97B7Xl9y9nqj/587BT=
QRg
7bbDARAAtlsWWZSRUkihhrnGkOsCMDpEMQA30kmDtmUB+kE5K+Pf8jC01DAUY4wUxIGsEp71P=
Zr+
7kLmBfnhAPke2vTJ1JacXEOspVZINYjsB1NukfXcEOQSqYhLp+qH5r39SCk7xmUYtCiGGmvbn=
rck
Kv5MW4Er6da1Ou32sacpdX8ORhZNE2wg9yeogmgT1Gu5JIOJsI2nPQLXg/VXHqEE5qfVp2Rr+=
kHo
qAmUSh3QScWcrcE0na+AgQVeD8mLgXJAmkxnX8gl0ge7SO4zGboYOkell4o98S4jIX5H/o9Ds=
0W+
3Zc7K/2bLsxOCAaxOL7bwUYx5LPvNgiXxjmJDUU9krL1ex1EW1z3toSnF/5H+IGCgcY4y/HNl=
xgt
/zfOvcvBmLEKnv1JMMFy0wL+faNEbrOjx7TPbuM66PC9xeV+G90QxwSqwLjU6uGtykybHOnvr=
kd/
1j9pebDgtO+8QGf17zsrYY0xfqevlD2+JS3Q2A29iiHDUqAhNRnDCYO7+aLows12Cv4qPgcby=
dZu
cX7L3qlFZHWyWJ68Bd74DHif24P2803POKxAiD0csXNMCtnipUbMHsRYCPIOrx6mT0nY+866j=
0Ov
s+hNfO3wByPo5p/ciylaZ0MGTnZfTM3fPUJRP1Sy2p1royL4Oc9gasZ6OFDmLnQyoHF2eYgAk=
U//
V/ApCBMAEQEAAcLBfAQYAQgAJhYhBGU6hGXx/qMjN4ZJr81zGBG64rr1BQJg7bbDAhsMBQkDw=
mi9
AAoJEM1zGBG64rr1m1IQAJteJrXuNLGbdX5yxLGYPOUblkGNi2j9GQPVU7UUxT0blajK6pQOO=
it7
E1wjBFben2+xaG+xFVHEweUyiHSK6GU3vytVsH16fb4cybY2bXOA/6A4rVzW3/+jirLIkabs2=
TsW
Nclmu/8AKvO+js8s9stUhAcriDWhSPgHgGho8OJyUD/8Y4yOt9hnuviH1qTazYilQyrdUDtok=
QqS
AQKQyFvzVimfAJfdmeIujVsfjIz3MU9uM85cSzJX9qjBX0KcQxEDT00lodhgdwKudmvfmk6Qg=
B0R
ijtWDOWlHhwiSDwlxKVm6dtypVJgCQty+i6iUf0zjxQWVcmm0Dyncjq/j7eUpzi35kaFzAYkG=
/Fe
FlTDndrc33HZQ2gDKTImtdEO+pK+vyroWJuyX/7qBsuPhBMH+bS7yBbSkRiGSdXsSLHy3mCMH=
rHm
+zKGpP/2nWjgWvewZnQGAgyeXd3nOME7PbCMPpS2gyXh/9sDaqkFL7xerMPPH3O2o4IrkMP3R=
Y15
nHRorNbXIphNI0DnaniJ/Vp2q2Em9XsyqVcMLvseL9J4sMfi/faIvh2JfG2UxaA/pWByCfxUB=
h5E
q8TOTRHsuKupAqr0jkBJvdTxs8uD3Qu3sIIIpe/Wo52xcl942Yw2oY/GMWBixu+2X9Sp0hFYj=
pWs
RokBxbR6ov5jsFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----
--------------In2MaTMnJQt6S0ye6ntCfZsE--


--------------qit7W3UxibTE6HdOdLFjKVTt--

--------------DUHX5jzPV4FbdRjlGRlcWyFN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmFXKAwFAwAAAAAACgkQzXMYEbriuvVa
Pw//URoIBPEUy0kGnzkPIvY3r5sbcluTyv7QQgXqys4l3IxpmWl+L9a4YMCJlRGF/Iz1AG8by0CN
ogOfBfK4WAfVW6YJzyr2cPtmqTazPtQ7f87jI03vlnvmFHCtiHuLyVOC8aCXM3DjQyPJ9dcpzU+0
yWK0oLWn5Ll0sclV//tzUXdaz8CBv0P6qG7Rt9h/axQV7DjFIaSSiL1IMM8yLmtcYhmRpkR3P2gE
5BaCNdHGI/vBNryTzX7by7AvkcztQZKPQ+LsI4wXar2fd2YDX86xO2jUqeAucx8CIPbChu0fz8ll
4bG3SEt/KLCrBe7pwOZIlL5Fz3rmipzngQ9yp3xXyjR6L5K3rYCy30zx4dUQGKFCSbLnjSMXXnYK
O+eOvGoUuv+LsnFixOa7drex4xQFpBN1/ltEZ9Vpy6Onm83jRG00TjzGn5srozwsGFhlqWL/e3wQ
34nF+AcY/uRyTnCKXmlc/iiEGuUB//cQypJx28srOID/EC1ILTAS77MCHQ5du4yOZtGAwAtdccPR
Tu/XZmP+aIwc/wg1cunPqudnVTPaqxaaFeiVTepkrT7/xgjYpwGmDZrFg1I/VuRWD8s3M8Aq113B
9fpsSHhtRYOVGbsijgEVOtJuTLncnGIwsdp8C5ROe/KkRf/cyzT6t6BG9u1km+FwzR4BSZCkkKg/
bsc=
=uoUd
-----END PGP SIGNATURE-----

--------------DUHX5jzPV4FbdRjlGRlcWyFN--

--===============0037402566453357274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0037402566453357274==--
