Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A2F164B58
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 18:02:34 +0100 (CET)
Received: from [::1] (port=43210 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4Sk5-0007Ac-H2; Wed, 19 Feb 2020 12:02:33 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:38897)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alvaropr97@gmail.com>)
 id 1j4Sk2-00072y-0c
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 12:02:30 -0500
Received: by mail-il1-f182.google.com with SMTP id f5so21207030ilq.5
 for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2020 09:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=klOI4UONvxCkhymh6+wLbZc3eirZb8RLC2PO59hV9aM=;
 b=XsWHLjoRO5tQ+wBcyFqhyhlNOIb+9cjzz9gBryvdrfSmMTXInAvUEyUhoo2qm+paR2
 8Oi+BfOYfPnhEQwUwAc4zxCrU7JCnBItQTcDRtlxjlLEIHjKUGvkKsRV7tIiU+QIl0P6
 7yIhQ3MU/KCZJ9xp7cfJ/WuAb9y8PS9s/2flp4zIwkx9PiudYY5wIfiwwe60omfppeDb
 5i4LWts1nIBB5fJDa5P3Ch6JdlTF1Nd7iVNmz6oOOtVe74b7XGgjxGQQrk0wdfnRwpkV
 ORNtBYsUNNDavkykMA6gq+5ke/vVldqQTzJHWIAHAy66e8bRdX9rakGWe8CxPCp1gcM3
 fMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=klOI4UONvxCkhymh6+wLbZc3eirZb8RLC2PO59hV9aM=;
 b=M+QosC/3baIwd4qrCdcIT57hi/dSZSfJlc5Iw+elmBpwGn6vt9fmqtiYM6mkR7OUou
 TEKgRcJt5PKSRg5qmnaHTzHgswDBeZFradekUpyxI5R4xfH5yCe0ZYrqSYTZ+M5abffI
 Zq30gu8JNAXnKQr8uzJIk872hHFaBN5DX7skNcX4S/sjK0TT+Td0oqmIri51XDG8QTPD
 InWbk5OIFFub9Wyw2yktzQ9dSBJgQDATbaC8EhFrzy3NuvTKvugMMnPsteNPrsl9wpA4
 eOmLbI2qdO/vjtSjX/U/FmJaTKb5i+i0f870educCuPhtycEvtGS848y85yqkpH0bgrm
 /SRA==
X-Gm-Message-State: APjAAAUcH3a8rLYT8aY2tZ+Lz07g6PYjZxa+IZLPjo64iRCEqv9LxcDy
 loI/ee1UtZZ0eobf8ko2pQHTz1AjeCS1SZyGMbqkzHAyDA==
X-Google-Smtp-Source: APXvYqwsNREJ9nlPPTCU/PSVM90SqFpndj4mC9TRxyKbb3/dngtpiCLkBQa09O47+tfGOYWbfeCa0pj0IViJzRRGHAQ=
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr22343041ilq.37.1582131708987; 
 Wed, 19 Feb 2020 09:01:48 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 18:01:38 +0100
Message-ID: <CAAZMsC3YHUe0gTn8eqoDJP_L9nU-b7qkxWVrc1CHq11RDPN+nA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] GNU Radio UHD Blocks Resolution
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Alvaro Pendas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas <alvaropr97@gmail.com>
Content-Type: multipart/mixed; boundary="===============1210283680817531852=="
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

--===============1210283680817531852==
Content-Type: multipart/alternative; boundary="000000000000808e7b059ef0be43"

--000000000000808e7b059ef0be43
Content-Type: text/plain; charset="UTF-8"

Hello,
I am using GNU Radio and the USRP B200. I have noticed that for the GNU
block UHD: USRP Sink, the values you pass to the block must be in the range
0 to 1. I guess that means if you do not want to lose resolution you must
ensure that you use the full range, that is to say, your minimum is 0 or
close to 0, and your max is 1 or close to 1. Am I correct?

On the other hand, what are the meaning of the values produce by the block
UHD: USRP Source? They must be related to the signal power, but I am not
sure about their range. Is the minimum value that block can produce the min
of the ADC output, and the max, the max of the ADC output? With the USRP
B200 the ADC resolution is 12 bits, are the min and the max always set with
the same value, or does it depend on the USRP configuration?

I am using GNU Radio right now, but probably, just knowing how this works
with UHD would be enough to understand the rest.

Thank you for your time,

Alvaro

--000000000000808e7b059ef0be43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>I am using GNU Radio and the USRP B200. I have n=
oticed that for the GNU block UHD: USRP Sink, the values you pass to the bl=
ock must be in the range 0 to 1. I guess that means if you do not want to l=
ose resolution you must ensure that you use the full range, that is to say,=
 your minimum is 0 or close to 0, and your max is 1 or close to 1. Am I cor=
rect?<br><br>On the other hand, what are the meaning of the values produce =
by the block UHD: USRP Source? They must be related to the signal power, bu=
t I am not sure about their range. Is the minimum value that block can prod=
uce the min of the ADC output, and the max, the max of the ADC output? With=
 the USRP B200 the ADC resolution is 12 bits, are the min and the max alway=
s set with the same value, or does it depend on the USRP configuration?<br>=
<br>I am using GNU Radio right now, but probably, just knowing how this wor=
ks with UHD would be enough to understand the rest.<div><br></div><div>Than=
k you for your time,</div><div><br></div><div>Alvaro<br></div></div>

--000000000000808e7b059ef0be43--


--===============1210283680817531852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1210283680817531852==--

