Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC6B24D69F
	for <lists+usrp-users@lfdr.de>; Fri, 21 Aug 2020 15:52:28 +0200 (CEST)
Received: from [::1] (port=51854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k97Sz-00011v-D8; Fri, 21 Aug 2020 09:52:25 -0400
Received: from mail-lj1-f169.google.com ([209.85.208.169]:37702)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <youngn111@gmail.com>) id 1k97Sv-0000wb-Om
 for usrp-users@lists.ettus.com; Fri, 21 Aug 2020 09:52:21 -0400
Received: by mail-lj1-f169.google.com with SMTP id w14so1938513ljj.4
 for <usrp-users@lists.ettus.com>; Fri, 21 Aug 2020 06:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jD332+8hXXwanzIQsb3tqxez2XjRPfyPSaR0Au2qmv0=;
 b=RqrI69OU7LYeLOXFy1bbLtnptb56ZNylLf4Awlz26zbnnei5R+RfSbl+dslLXOjxkh
 SVxlcPEN9FtHVhapgRcua9gq2UAq6eDOmYmDwYSFUn3QkJgXu6XltiZoztcplKt1bzgZ
 dzb3jJkwQ7GIFuz86kRvkJXiEwTY8TqmPSvhJV5Z6mvm2stxqOBL8TuIlUFlua1bPPbP
 tffR/PzFHb3l9mLew1B06IZwzvp8L6v3WstzP1crG0WnWGFPXRb1tV0fuf3rDZBVv6dm
 MY6q16wkWuplzkjDlAbD/udQveTqhPvRyfrkO9rZcEmAEVVyHrcJ9IyEXfKrmge8Dp9D
 hbYQ==
X-Gm-Message-State: AOAM5327/7X+gfQo2hduxd+V+7ND/9DhGhQM3Dmog20s9+6V8YA4JPz5
 rPjoiMAAQkGSh/AVj91rlDk6vtDT07FzqTeHJZqqGLmfULGF
X-Google-Smtp-Source: ABdhPJw2q0aqhiLBLIpQA9tKykUjkZdkBS4fBgMsp884UECwEr8UfyfkPICpao3cPY2F8VxY8AKWSEqV6pHYcccZM5w=
X-Received: by 2002:a2e:874c:: with SMTP id q12mr1485607ljj.380.1598017900156; 
 Fri, 21 Aug 2020 06:51:40 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 21 Aug 2020 08:51:30 -0500
Message-ID: <CAJU_EcXAiJowrbTc3vU=6MSfe6=9La2Lg_=Cz_V3Eqn-PdN4CQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Ordering of I/Q data in buffers on the host
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
From: Nate Young via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Young <nate.young@wde-llc.com>
Content-Type: multipart/mixed; boundary="===============3634241110879884757=="
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

--===============3634241110879884757==
Content-Type: multipart/alternative; boundary="000000000000489ad705ad6389db"

--000000000000489ad705ad6389db
Content-Type: text/plain; charset="UTF-8"

Hi All.

I am using a Linux based host with b205mini and have a question on the
ordering of I and Q samples in a buffer.

If I create a buffer of floats, and then send them via the API
uhd_tx_stream_send(), which sample should come first in the buffer?
I know the I and Q are interleaved, but should Q fill the even positions,
or I?
If it matters, I am using f32 on the host with sc16 over the wire.

To help clarify my question...  Please review the following pseudo-code
that loads values into the even and odd values of the transmit buffer.

float fArray[100];
for(i=0;i<50;i++)
{
     fArray[i*2] = (float)0.12345;                     //   <=== Load the
even values.  is this I[n] or Q[n]?
     fArray[(i*2)+1] = (float)0.6789;                //   <=== Load the odd
values.  is this Q or I?
}

Thank you.
Nate

--000000000000489ad705ad6389db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All.<div><br></div><div>I am using a Linux based host w=
ith b205mini and have a question on the ordering of I and Q samples in a bu=
ffer.</div><div><br></div><div>If I create a buffer of floats, and then sen=
d them via the API uhd_tx_stream_send(), which sample should come first in =
the buffer?</div><div>I know the I and Q are interleaved, but should Q fill=
 the even positions, or I?</div><div>If it matters, I am using f32 on the h=
ost with sc16 over the wire.</div><div><br></div><div>To help clarify my qu=
estion...=C2=A0 Please review the following pseudo-code that loads values i=
nto the even and odd values of the transmit buffer.<br></div><div><div></di=
v></div><div><br></div><div>float fArray[100];</div><div>for(i=3D0;i&lt;50;=
i++)</div><div>{</div><div>=C2=A0 =C2=A0 =C2=A0fArray[i*2] =3D (float)0.123=
45;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0//=C2=A0 =C2=A0&lt;=3D=3D=3D Load the even values.=C2=A0 is this I[n]=
 or Q[n]?</div><div>=C2=A0 =C2=A0 =C2=A0fArray[(i*2)+1] =3D (float)0.6789;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 //=C2=A0 =C2=A0&lt;=
=3D=3D=3D Load the odd values.=C2=A0 is this Q or I?</div><div>}</div><div>=
<br></div><div>Thank you.</div><div>Nate</div><div><br></div>
=09
=09


</div>

--000000000000489ad705ad6389db--


--===============3634241110879884757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3634241110879884757==--

