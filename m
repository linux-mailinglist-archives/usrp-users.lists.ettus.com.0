Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 854143FCF3F
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 23:40:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74B833841BF
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 17:40:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZV2yVWUp";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id EA77838009E
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 17:39:37 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id a10so870249qka.12
        for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 14:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=jo+mohb/y31M4wKA35ll2PZduqHOLXGJdROKZYCwqKY=;
        b=ZV2yVWUptyzVmYjh7acCjSnWIJZBn9AbfV7Uo3AHKX9FPNE5bZGjV2pga+GQy68pfF
         /fi7hAIFFmazubSxhdkHQ1ka5eEMUqDcl2zn854lPqbt0/mZfrcpgHHePa1eHJaicFYA
         gUF2J5vLLyR1w4T3xRPlmWjocHM3qmapM2JnaxK8R0vV1rHnjM/Bx710o4gOkT3yz45l
         jXWsR5gZ1Fo/nTnlmyQvisW0IpQEC0ENe9/4RJZWIBZ4KqN4sa1WiyA9JiRlAPA+lWwb
         S+xUUZ8rsYhxGp7Qv56zJ8ISY1o5iYFIL5Sj2EEUiSsmE5rfOvRHZWH6kZZsIgOTQ7u8
         EMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=jo+mohb/y31M4wKA35ll2PZduqHOLXGJdROKZYCwqKY=;
        b=h2vt/YTudPMyazpJuj+F7czreHbwHCTLScnKNbNDh7MhOvPkGu2nrnbPfi8vq3PJKk
         fpZ9PIF5sq9bmXKa0b+PgyDpWwZJJNpxOIRyEJNFnDspZ0LGkn1JNGIRWKH3H8rWbhjb
         dhDUc9ov61aIVI3x1neiZsw/PQKm0Cj20yFPF18UV1Nhx+lcamm9jhv3vXRGkUbyZdzy
         JgtrsqVTZyF9DmZjdYeux4AbBEWK5v9emtF5YCV7Fqh45mPm3IrhUsnBuLhOVofftOSG
         HWwH8UztPT9LY30eCSImSiBLwrrWmvfO6FBlIG94YGjbq4zl2SB6aRDBtYD5PfCEruPv
         e6pw==
X-Gm-Message-State: AOAM532OEKvtYpsi1pmIyw7MTpns7nsRx8V46KYPdab9uPi7tbJhBXaf
	gv/zaknb/FiKvZVN0i5lMqHyQLkIMT7HcQ==
X-Google-Smtp-Source: ABdhPJyrlp1ihUNtgTptjBkFswXI6TJ8h1aJu3e8c4KGDw36w/MbR3kO3tO+90ZJZoC3lrTzs07HkA==
X-Received: by 2002:a05:620a:2008:: with SMTP id c8mr5128131qka.493.1630445977210;
        Tue, 31 Aug 2021 14:39:37 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x25sm11668885qtj.77.2021.08.31.14.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 14:39:36 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 31 Aug 2021 17:39:36 -0400
Message-Id: <E586070A-3208-4DF4-8164-517E75FD3A38@gmail.com>
References: <SA9PR09MB516888457D1E4D6380A3CEF0ECCC9@SA9PR09MB5168.namprd09.prod.outlook.com>
In-Reply-To: <SA9PR09MB516888457D1E4D6380A3CEF0ECCC9@SA9PR09MB5168.namprd09.prod.outlook.com>
To: Eugene Grayver <eugene.grayver@aero.org>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: 3AUNUEZCBDD6DHOMDC225XCFY4HOUY5Z
X-Message-ID-Hash: 3AUNUEZCBDD6DHOMDC225XCFY4HOUY5Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: block alias in GRC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3AUNUEZCBDD6DHOMDC225XCFY4HOUY5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3554004348540812881=="


--===============3554004348540812881==
Content-Type: multipart/alternative; boundary=Apple-Mail-D6B5958A-B2F0-4077-A0E4-B5D7B4AC6539
Content-Transfer-Encoding: 7bit


--Apple-Mail-D6B5958A-B2F0-4077-A0E4-B5D7B4AC6539
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This should be posted to the discuss-gnuradio mailing list.=20

Sent from my iPhone

> On Aug 31, 2021, at 5:02 PM, Eugene Grayver <eugene.grayver@aero.org> wrot=
e:
>=20
> =EF=BB=BF
> I'd like to suggest a minor change to the 'block alias' field in the advan=
ced tab. Currently it is treated as a string, but it should be treated as an=
y to allow creating aliases based on variables/parameters.  It helps with la=
rge flowgraphs, especially with hierarchical blocks.
>=20
> ________________________
> Eugene Grayver, Ph.D.
> Aerospace Corp., Principal Engineer
> Tel: 310.336.1274
> ________________________
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D6B5958A-B2F0-4077-A0E4-B5D7B4AC6539
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This should be posted to the discuss-gnurad=
io mailing list.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 31, 2021, at 5:02 PM, Euge=
ne Grayver &lt;eugene.grayver@aero.org&gt; wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
I'd like to suggest a minor change to the 'block alias' field in the advance=
d tab. Currently it is treated as a string, but it should be treated as any t=
o allow creating aliases based on variables/parameters.&nbsp; It helps with l=
arge flowgraphs, especially with
 hierarchical blocks.</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); font=
-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; background-color=
:rgb(255,255,255)">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span style=3D"color:black=
; font-family:&quot;Arial&quot;,sans-serif; font-size:10pt"><span id=3D"ms-r=
terangepaste-start"></span><span style=3D"color:rgb(0,0,0); font-family:Aria=
l,sans-serif; font-size:13.33px">________________________</span><span id=3D"=
ms-rterangepaste-end"></span><br>
</span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span style=3D"color:black=
; font-family:&quot;Arial&quot;,sans-serif; font-size:10pt">Eugene Grayver, P=
h.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-D6B5958A-B2F0-4077-A0E4-B5D7B4AC6539--

--===============3554004348540812881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3554004348540812881==--
