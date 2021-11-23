Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C87C45AF4E
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 23:42:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FB883845B6
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 17:42:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="TvIPxmgb";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 518ED383E7E
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 17:41:10 -0500 (EST)
Received: by mail-qk1-f181.google.com with SMTP id 193so756244qkh.10
        for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 14:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to:cc
         :references:from:organization:subject:in-reply-to;
        bh=vsWRkf12nfPacYtPUcUfFpic+hb7K/korQKmTBSiGf8=;
        b=TvIPxmgbnCUOT7vnEw/m/cbD7mN8v9M/SfRBP9LWEivmsaKbmLDafcwdLmOQjOKx5F
         lkYzhU9hPfWmAxtUb/0n5SkvOSusz4rLwnzSMX3EDWoGUWMDARQJ3Ae7b6o6eywYY1dg
         8Yt0ZQAZrNyUsN1wj9py/K4NoX7Br/aaqIwqBnHwu51Vz6IXaCcBy6elvFMPkcsUjd3y
         tjDD8XBPX1O2KNoseUBgOw2IZr7ZLvvskdCzMQns9Ut5Om4IPMI78DAj0+q5ipbAQ1Ag
         VSQDfKXl3D0d6gu8ysCG74fK4A2+qrtonEaPAJmsma1Eh39OD1ATR1nTtyXFxa/G3+nv
         83ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:organization:subject
         :in-reply-to;
        bh=vsWRkf12nfPacYtPUcUfFpic+hb7K/korQKmTBSiGf8=;
        b=vMPuWwX6lYgVVMfL9G7vsq90DAt3c0tGE+FXfgnRG8mYhlj+IeJhziQ5gos7BJpBYm
         vz5DTj4tpdLO113kdCZVwgTjgKjpjp2mZfujKWWtfJhsNl42Czcl/OltcVHKtzTetBJM
         xNxOLXyT8k1Hj7Udf9tj461XRw60KWsLFZ9iiIjhRZLbEMsK9yoWkXC6oUqEPMB+knuK
         Huxi1xJXQvsuQ02JmxrvDtoyNE0Fl74n1j86lgzi2OUNEaZHQYkttGvruxoEBYRHnQUY
         3e+kiQayAwCAtDvlUPY72LmJHGESHWaA3+HhlH1OCdqLCRoBT5O7LOC5A9lC3OC5S6I7
         U03g==
X-Gm-Message-State: AOAM5301zrnqZM4KggOCJqouhufcdRA3lwcHuiDFoiZFvE8VZXdCGjRQ
	zivOWMgfTHHlgL+uZyiqMC/Vig==
X-Google-Smtp-Source: ABdhPJzIj2s6jOVVu9BKAXXgbPMXWan2tB9mgGxNvzMQxLx+njcp/GwIrUX840rHKBpVMbl4JVaAUA==
X-Received: by 2002:a05:620a:2589:: with SMTP id x9mr971524qko.152.1637707269588;
        Tue, 23 Nov 2021 14:41:09 -0800 (PST)
Received: from [10.8.203.162] ([37.19.197.167])
        by smtp.gmail.com with ESMTPSA id a24sm6403726qtp.95.2021.11.23.14.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 14:41:07 -0800 (PST)
Message-ID: <f6ebd6da-df5f-57f0-1448-ad973762fbad@virginia.edu>
Date: Tue, 23 Nov 2021 17:41:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
 <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
In-Reply-To: <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com>
Message-ID-Hash: ZIDLHIVJ6R7WKHKRQLPN7CO3FTFNUS76
X-Message-ID-Hash: ZIDLHIVJ6R7WKHKRQLPN7CO3FTFNUS76
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 FPGA errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZIDLHIVJ6R7WKHKRQLPN7CO3FTFNUS76/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5064760788730790672=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5064760788730790672==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EenPGSdK007J1Np7T7Z2dVHL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EenPGSdK007J1Np7T7Z2dVHL
Content-Type: multipart/mixed; boundary="------------y0liDph9dej5xtj6lNDuItBy";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID: <f6ebd6da-df5f-57f0-1448-ad973762fbad@virginia.edu>
Subject: Re: [USRP-users] X310 FPGA errors
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
 <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com>
In-Reply-To: <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com>

--------------y0liDph9dej5xtj6lNDuItBy
Content-Type: multipart/mixed; boundary="------------aYCFhLz1I6devRpylwo3Bah3"

--------------aYCFhLz1I6devRpylwo3Bah3
Content-Type: multipart/alternative;
 boundary="------------hndCSH213P0067Y3fc0b03wO"

--------------hndCSH213P0067Y3fc0b03wO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Sm9uYXRob24sIE1hcmN1cw0KDQpVc3VhbGx5LCB3aGVuIHNvbWV0aGluZyBnb2VzIHdyb25n
LCBJJ20gZ2V0dGluZyBhbiBlcnJvciBsaWtlIHRoaXM6DQoNClt4MzAwX2Z3X2N0cmwuY3Bw
OjUzXSBbWDMwMF0gMTkyLjE2OC40MC4yOiB4MzAwIGZ3IGNvbW11bmljYXRpb24NCmZhaWx1
cmUgIzENCkVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IHgzMDAgZncgcG9rZTMyIC0gcmVw
bHkgdGltZWQgb3V0DQpbMV0gICAgMTkzNjIyIGFib3J0IChjb3JlIGR1bXBlZCkNCg0KTWFy
Y3VzLCBJJ20gbm90IHN1cmUgd2hpY2ggcGFydCBvZiB0aGUgY29kZSB5b3UgbWlnaHQgZmlu
ZCBpbnRlcmVzdGluZywgdGhpcyBpcyB0aGUgcG9ydGlvbiBvZiBteSBwcm9qZWN0IHRoYXQg
aW50ZXJmYWNlcyB3aXRoIGEgcmFkaW8sIGZvciByZWZlcmVuY2U6DQpodHRwczovL3UucGNs
b3VkLmxpbmsvcHVibGluay9zaG93P2NvZGU9WFo2amFJWFpuVE04VjdmQUt0TGJqUzdOQWxo
dHhqUW0zRGw3DQoNCkR1c3Rpbg0KDQpPbiAxMS8yMy8yMSAxNTowMiwgSm9uYXRob24gUGVu
ZGx1bSB3cm90ZToNCj4gSGkgRHVzdGluLA0KPg0KPiBDYW4geW91IHByb3ZpZGUgdGhlIGVy
cm9yIG1lc3NhZ2U/DQo+DQo+IEpvbmF0aG9uDQo+DQo+IE9uIFR1ZSwgTm92IDIzLCAyMDIx
IGF0IDI6MjAgUE0gRHVzdGluIFdpZG1hbm4gPGR3MnpxQHZpcmdpbmlhLmVkdT4gd3JvdGU6
DQo+DQo+ICAgICBIaSBsaXN0LA0KPg0KPiAgICAgSSBvY2Nhc2lvbmFsbHksIHVucHJlZGlj
dGFibHksIGdldCBGUEdBLXJlbGF0ZWQgZXJyb3JzLiBVc3VhbGx5IHNvbWUNCj4gICAgIHNv
cnQgb2YgRlBHQSB0aW1lb3V0cywgc28gSSBoYXZlIHRvIHJlc2V0IHRoZSBVU1JQIGFmdGVy
IHRoZXNlDQo+ICAgICBlcnJvcnMsDQo+ICAgICB3aGljaCBpcyByYXRoZXIgaW5jb252ZW5p
ZW50Lg0KPg0KPiAgICAgVGhlIHNvZnR3YXJlIGlzIEMrKyB1c2luZyB0aGUgVUhEIDQgbXVs
dGktdXNycCBBUEkuDQo+DQo+ICAgICBXaXRob3V0IGdvaW5nIGludG8gdG9vIG11Y2ggZGV0
YWlsLCBJIHdvbmRlciBpZiB0aGVyZSBpcyBhbnl0aGluZw0KPiAgICAgcGFydGljdWxhciB0
byBteSAqYXBwcm9hY2gqIHRoYXQgY291bGQgbWFrZSB0aGluZ3MgbW9yZSBwcm9uZSB0byBG
UEdBDQo+ICAgICBlcnJvcnMgb2YgYW55IHNvcnRzLiBJJ20gYWxzbyBjdXJpb3VzIGFib3V0
IHRoZSBkaWZmZXJlbnQNCj4gICAgIOKAnHN0cmVhbV9tb2Rlc+KAnQ0KPiAgICAgdGhhdCBh
cmUgYXZhaWxhYmxlLCB0aGVpciBwcm9zIGFuZCBjb25zIC8gdXNlIGNhc2VzLCBhbmQgbW9y
ZQ0KPiAgICAgcGFydGljdWxhcmx5IGlmIEknbSByZWFsbHkgdXNpbmcgdGhlIG9uZSBiZXN0
IHN1aXRlZCB0byBteSB1c2UgY2FzZS4NCj4NCj4gICAgIEJlZm9yZSBkZXNjcmliaW5nIHRo
YXQsIHRoaXMgaXMgd2hhdCBJJ20gdHJ5aW5nIHRvIGRvLiBJdCdzIGZhaXJseQ0KPiAgICAg
c2ltcGxlLCBidXQgSSdtIHRyeWluZyB0byBtYWtlIGl0IHR1bmUsIGNvbGxlY3QsIGFuZCB0
aGVuIHR1bmUNCj4gICAgIGFnYWluIGFzDQo+ICAgICBxdWlja2x5IGFzIHBvc3NpYmxlIHdp
dGhvdXQgbGVhdmluZyBteSBjb3p5IEMrKyBiZWQuIEl0J3MgY3VycmVudGx5DQo+ICAgICBk
b2luZyB0aGlzID4xMDAgdGltZXMgcGVyIHNlY29uZC4NCj4gICAgICogdHJhbnNtaXRzIGNv
bnRpbnVvdXNseQ0KPiAgICAgKiBpbiBhIGxvb3A6DQo+ICAgICAqKiogdHVuZSB0aGUgdHJh
bnNtaXR0ZXIgYW5kIHJlY2VpdmVycyBhbmQgc2V0IHRoZWlyIGdhaW46DQo+ICAgICAqKiog
cmVjZWl2ZSBhIGZpeGVkIG51bWJlciBvZiBzYW1wbGVzDQo+DQo+ICAgICBIb3cgSSdtIGN1
cnJlbnRseSBnb2luZyBhYm91dCBpdDoNCj4NCj4NCj4gICAgIEluIG1haW4gb2JqZWN0L3Ro
cmVhZA0KPiAgICAgKiBpbml0IHRoZSByYWRpbw0KPiAgICAgKiBjcmVhdGUgYSB0eCBvYmpl
Y3QgYW5kIG1vdmUgaXQgdG8gYSBuZXcgdGhyZWFkDQo+ICAgICAqIGdpdmUgdGhlIHR4IG9i
amVjdCBhIHN0cmVhbWVyDQo+ICAgICAqIHRlbGwgdGhlIHR4IG9iamVjdCB0byBzdGFydCBz
dHJlYW1pbmcNCj4gICAgICogY3JlYXRlIGEgcnggb2JqZWN0IGFuZCBtb3ZlIGl0IHRvIGEg
bmV3IHRocmVhZA0KPiAgICAgKiBnaXZlIHRoZSByeCBvYmplY3QgYSBzdHJlYW1lcg0KPiAg
ICAgKiB0ZWxsIHRoZSByeCBvYmplY3QgdG8gc3RhcnQgc3RyZWFtaW5nDQo+ICAgICAqIGlu
IGEgbG9vcCAoZm9yZXZlcik6DQo+ICAgICAqKiogY2xlYXIgY29tbWFuZCB0aW1lDQo+ICAg
ICAqKiogc2V0IGNvbW1hbmQgdGltZSB0byBub3coKSswLjAwNA0KPiAgICAgKioqIHNldF9y
eF9mcmVxIHRvIG5leHQgZnJlcXVlbmN5IGZvciBib3RoIGNoYW5uZWxzDQo+ICAgICAqKiog
c2V0X3R4X2ZyZXEgdG8gbmV4dCBmcmVxdWVuY3kgZm9yIGNoYW5uZWwgMA0KPiAgICAgKioq
IHNldCB0aGUgcnggZ2Fpbg0KPiAgICAgKioqIHNldCB0aGUgdHggZ2Fpbg0KPiAgICAgKioq
IHNsZWVwIGZvciA0bXMNCj4gICAgICoqKiBhc2sgdGhlIHJ4IG9iamVjdCB0byBzYXZlIHNv
bWUgc2FtcGxlcw0KPg0KPiAgICAgaW4gdHggb2JqZWN0L3RocmVhZA0KPiAgICAgKiBpbiBh
IGxvb3AgKHVudGlsIGFza2VkIHRvIHN0b3AgYnkgbWFpbikNCj4gICAgICoqKiBjYWxsIHNl
bmQgb24gdGhlIHN0cmVhbWVyIHdpdGggbWF4X251bV9zYW1wcyBzYW1wbGVzIGZyb20gYSBm
aXhlZA0KPiAgICAgd2F2ZWZvcm0NCj4gICAgICogd2hlbiBraWxsZWQsIHNlbmQgYW4gZW1w
dHkgZW5kX29mX2J1cnN0DQo+DQo+ICAgICBpbiByeCBvYmplY3QvdGhyZWFkDQo+ICAgICAq
IGlzc3VlIFNUUkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVMsIHN0YXJ0aW5nIDAuMjUgaW4g
dGhlDQo+ICAgICBmdXR1cmUvX3Jlc3RhcnQNCj4gICAgICogaW4gYSBsb29wICh1bnRpbCBh
c2tlZCB0byBzdG9wIGJ5IG1haW4pDQo+ICAgICAqKiogcmVjdsKgIG1heF9udW1fc2FtcHMg
ZnJvbSB0aGUgc3RyZWFtZXINCj4gICAgICoqKiBjaGVjayBmb3IvaGFuZGxlIGVycm9ycyBp
ZiB0aGV5IG9jY3VyIChvZnRlbiBkbyBhdCB0aGUgc3RhcnQNCj4gICAgIG9mIHRoZQ0KPiAg
ICAgc3RyZWFtKQ0KPiAgICAgKioqIGNvcHkgdGhlIHNhbXBsZXPCoCBpZiBjdXJyZW50bHkg
Y29sbGVjdGluZywgZWxzZSBkaXNjYXJkIHRoZW0NCj4gICAgICogd2hlbiBraWxsZWQsIGlz
c3VlIFNUUkVBTV9NT0RFX1NUT1BfQ09OVElOT1VTDQo+DQo+ICAgICBJIGNhbi93aWxsIHBy
b3ZpZGUgbW9yZSBkZXRhaWwvY29kZS9ldGMsIGJ1dCB0aGF0J3Mgbm90IG5lY2Vzc2FyaWx5
DQo+ICAgICByZWxldmFudCB0byB0aGUgKmFwcHJvYWNoKiBJIHdvdWxkbid0IHRoaW5rLiBU
byByZWl0ZXJhdGUgdGhlDQo+ICAgICBxdWVzdGlvbiwNCj4gICAgIEkgd2FudCB0byBrbm93
IGlmIHRoZXJlIGlzIGFueXRoaW5nIGFib3V0IHRoZSBhcHByb2FjaCB0aGF0IHdvdWxkDQo+
ICAgICBtYWtlDQo+ICAgICBGUEdBIHJlbGF0ZWQgZXJyb3JzIGxpa2VseS4NCj4NCj4gICAg
IC1EdXN0aW4NCj4NCj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiAgICAgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPg0K
--------------hndCSH213P0067Y3fc0b03wO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>Jonathon, Marcus<br>
      <br>
      Usually, when something goes wrong, I'm getting an error like
      this:<br>
    </p>
    <pre style=3D"font-size: 14px !important; line-height: 19.6px !import=
ant;">[x300_fw_ctrl.cpp:53] [X300] 192.168.40.2: x300 fw communication
failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[1]    193622 abort (core dumped)

Marcus, I'm not sure which part of the code you might find interesting, t=
his is the portion of my project that interfaces with a radio, for refere=
nce:=20
<a class=3D"moz-txt-link-freetext" href=3D"https://u.pcloud.link/publink/=
show?code=3DXZ6jaIXZnTM8V7fAKtLbjS7NAlhtxjQm3Dl7">https://u.pcloud.link/p=
ublink/show?code=3DXZ6jaIXZnTM8V7fAKtLbjS7NAlhtxjQm3Dl7</a>

Dustin

</pre>
    <div class=3D"moz-cite-prefix">On 11/23/21 15:02, Jonathon Pendlum
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Dustin,
        <div><br>
        </div>
        <div>Can you provide the error message?</div>
        <div><br>
        </div>
        <div>Jonathon</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, 2021 at 2:2=
0
          PM Dustin Widmann &lt;<a href=3D"mailto:dw2zq@virginia.edu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">dw2z=
q@virginia.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi
          list,<br>
          <br>
          I occasionally, unpredictably, get FPGA-related errors.
          Usually some <br>
          sort of FPGA timeouts, so I have to reset the USRP after these
          errors, <br>
          which is rather inconvenient.<br>
          <br>
          The software is C++ using the UHD 4 multi-usrp API.<br>
          <br>
          Without going into too much detail, I wonder if there is
          anything <br>
          particular to my *approach* that could make things more prone
          to FPGA <br>
          errors of any sorts. I'm also curious about the different
          =E2=80=9Cstream_modes=E2=80=9D <br>
          that are available, their pros and cons / use cases, and more
          <br>
          particularly if I'm really using the one best suited to my use
          case.<br>
          <br>
          Before describing that, this is what I'm trying to do. It's
          fairly <br>
          simple, but I'm trying to make it tune, collect, and then tune
          again as <br>
          quickly as possible without leaving my cozy C++ bed. It's
          currently <br>
          doing this &gt;100 times per second.<br>
          * transmits continuously<br>
          * in a loop:<br>
          *** tune the transmitter and receivers and set their gain:<br>
          *** receive a fixed number of samples<br>
          <br>
          How I'm currently going about it:<br>
          <br>
          <br>
          In main object/thread<br>
          * init the radio<br>
          * create a tx object and move it to a new thread<br>
          * give the tx object a streamer<br>
          * tell the tx object to start streaming<br>
          * create a rx object and move it to a new thread<br>
          * give the rx object a streamer<br>
          * tell the rx object to start streaming<br>
          * in a loop (forever):<br>
          *** clear command time<br>
          *** set command time to now()+0.004<br>
          *** set_rx_freq to next frequency for both channels<br>
          *** set_tx_freq to next frequency for channel 0<br>
          *** set the rx gain<br>
          *** set the tx gain<br>
          *** sleep for 4ms<br>
          *** ask the rx object to save some samples<br>
          <br>
          in tx object/thread<br>
          * in a loop (until asked to stop by main)<br>
          *** call send on the streamer with max_num_samps samples from
          a fixed <br>
          waveform<br>
          * when killed, send an empty end_of_burst<br>
          <br>
          in rx object/thread<br>
          * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the
          future/_restart<br>
          * in a loop (until asked to stop by main)<br>
          *** recv=C2=A0 max_num_samps from the streamer<br>
          *** check for/handle errors if they occur (often do at the
          start of the <br>
          stream)<br>
          *** copy the samples=C2=A0 if currently collecting, else discar=
d
          them<br>
          * when killed, issue STREAM_MODE_STOP_CONTINOUS<br>
          <br>
          I can/will provide more detail/code/etc, but that's not
          necessarily <br>
          relevant to the *approach* I wouldn't think. To reiterate the
          question, <br>
          I want to know if there is anything about the approach that
          would make <br>
          FPGA related errors likely.<br>
          <br>
          -Dustin<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>
--------------hndCSH213P0067Y3fc0b03wO--

--------------aYCFhLz1I6devRpylwo3Bah3
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
sFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----
--------------aYCFhLz1I6devRpylwo3Bah3--


--------------y0liDph9dej5xtj6lNDuItBy--

--------------EenPGSdK007J1Np7T7Z2dVHL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmGdbgIFAwAAAAAACgkQzXMYEbriuvVx
BhAAmdrdLWO5pI+3ym1hZYyrodtAydYfD0tirh2lQ0hLjFCNB2CDGm6bdWB+BD+kZIGFruY7igDA
bgLV1p1ta2Aued0lvAcDxua2Jh65hQjwvY5cQ2g7urIHg+h5VUAmZE0MSji/W4iQnL1D7zIDxwId
x16jeVJ1409hQIvoM3CPfF+6tu7doNH2bb8rWkr5XNLh9PSBEzTwQUh7DFSj4ZdZWjWg6aGqMExJ
hboUDaWLQ5YII5Wv5+ZToKPyhFGjt0fp+5yOcU4y6OX5VUaBrXbENi3mbMtCHwG5PazXt3LGeCfm
MLXxCFlMcLWQJbGJqRLkiVva3oFRx4C1A3ZX3QhuDYBu/qBbnaYO4MT/2fsJa97Kiy5FTrSTWjoS
FZsWGzsSj/TrCN3D0dmTW96VCgG9CAa8tmEU7S8vx3T1MjHPvoY1oYTghA8NOFDW8MhV0CrZ5le5
hgV1xB+yb4CiLxleiE+r7SR+GBYtgtGp325CkeED73Lpk57zxMSloEp1XNEJrKg8RsSWFjbxM4WU
0UZt5e12WnpKvI+Y5PFCLwjIvPU0rkA3rhuFaFxDjFGgVFZgA8Df7puEb06olr9gO2Q33u20Gxf3
iWD45cjAsigx6hEZWM9nazZB7XS/RFikIj5fIqjbWvqZT55ynqTmA0Eu0P1nPFTpdfkzyqjsQm/S
l30=
=SL6B
-----END PGP SIGNATURE-----

--------------EenPGSdK007J1Np7T7Z2dVHL--

--===============5064760788730790672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5064760788730790672==--
