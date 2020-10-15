Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94C28F792
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 19:19:39 +0200 (CEST)
Received: from [::1] (port=41672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT6uf-0005ub-Lc; Thu, 15 Oct 2020 13:19:37 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:34801)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mcerror@gmail.com>) id 1kT6ub-0005nO-6N
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 13:19:33 -0400
Received: by mail-ed1-f53.google.com with SMTP id x1so3906698eds.1
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 10:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xVI2V08UztXg3sAH4AHNGyN+S0Jd8FpAX1zfdDSqno8=;
 b=GstI2cclYa9cRuJNuxdaN/N5cFp8SiCEwHB4A/x6LIVvNoS/zoBEfGC7hzts3/uc0d
 CNTDvkRYgzctxKC4lUn3CMOs1OiAQzQpvRpUNNHeATaUQImKNuG3sz9TFpEfNiUpV/+q
 u4/ArKBm+WQFYwAlEuVckY8d4+MQmqH1pp9Np//O0SIy0DNA7lRja2fPbHWgLUroNNr6
 M+tXYaIeAdLtakRHJX2W3MGx/bzNhkGJf2libGcQUb8auUTNxAvfDdbakfFjlcdz0U8C
 8jviq/jgs0CzHPuXl8URAP5re+CUDrG3tEQ0dpGCWmrmdvMeK7HASfbx0jx+j4MkEUd6
 OqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xVI2V08UztXg3sAH4AHNGyN+S0Jd8FpAX1zfdDSqno8=;
 b=EFmwY4rEjN5LLxiun22qeyKBEylIv/aBXof2pR6lH3GsJBicY0PcElceRXctzbZcDY
 UvZJvMjDSZMzKO2Fed4qAWxtf7zBEGeDa+JrXThX5vR1pOQGkQdllu+EqVMGAwDx3uDk
 ivSfETnA1f+WroOe7Y8eUufNJ/KmhqarE4il7h8Er4nSLgjLjx5qgB6+9Dq1Gn1k15rk
 IFSmJweQjWpfbMMajvdRCwZpbL2HEWVFaxiGBmFPcoTL/WuPjVh+MIS+nFNsfuG3U7wK
 qoYttigwQ3pf45vZzm8RFwOU9qXbYg2uxnXQcHNUAOJ0p4kosJHx2IKRJEr6ZJuqzo9d
 ahdQ==
X-Gm-Message-State: AOAM533KAFvJoxz5WOlZnUK893M6YBPzcW60UBPNFAd167bJHLVu1bXt
 7t2CS8kNIzobSDIjKtHXTngw+zg5OoGzWjrVgygpUkA1Enc=
X-Google-Smtp-Source: ABdhPJzyk88ThW1XT3HfqKPmim85ruJHpydFTGkPoU9/ZlDjMd3pRh+cf7GmKejn9YEDMbrSDddsiCWQZQKu+NDoC3o=
X-Received: by 2002:a05:6402:2207:: with SMTP id
 cq7mr5541489edb.359.1602782331976; 
 Thu, 15 Oct 2020 10:18:51 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 15 Oct 2020 20:18:41 +0300
Message-ID: <CAOjuhW=a7=racuoy=fdnW4HWZW8ns3mZtZOPchW44b9qaZBnCA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Emulator device
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
From: Alexey Silyuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alexey Silyuk <mcerror@gmail.com>
Content-Type: multipart/mixed; boundary="===============2968277104154164390=="
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

--===============2968277104154164390==
Content-Type: multipart/alternative; boundary="0000000000008cbdf905b1b8d7ee"

--0000000000008cbdf905b1b8d7ee
Content-Type: text/plain; charset="UTF-8"

  Hello dear friends, i am a new usrp user, i am starting to work with uhd
package but currently  haven't any SRD device, and i want to create or find
some EMULATOR device.
I am copied device in /uh/lib/usrp/ based on usrp2 device, all i want to do
now is to simulate serial device an instead of RX and TX to use reading an
writing to simple file.
no i am stuck on line in
/lib/transport/super_recv_packet_handler.hpp line with

            buff = _props[index].get_buff(timeout);
            if (buff.get() == nullptr)
                return PACKET_TIMEOUT_ERROR;

i guess that this line trying to get RX buffer from somewhere, if buffer is
empty will return timeout error,
how and what i can to do in this line to read from file instead of buffer?

Thanks for any help
Regards,Alexey

--0000000000008cbdf905b1b8d7ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Hello dear friends, i am a new usrp user, i am star=
ting to work with uhd package but currently=C2=A0 haven&#39;t any SRD devic=
e, and i want to create or find some EMULATOR device.<div>I am copied devic=
e in /uh/lib/usrp/ based on usrp2 device, all i want to do now is to simula=
te serial device an instead of RX and TX to use reading an writing to simpl=
e file.</div><div>no i am stuck on line in=C2=A0<br>/lib/transport/super_re=
cv_packet_handler.hpp line with=C2=A0</div><div><br></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buff =3D _props[index].get_buff(timeout);<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (buff.get() =3D=3D nullptr)<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return PACKET_TI=
MEOUT_ERROR;<br></div><div><br></div><div>i guess that this line trying to =
get RX buffer from somewhere, if buffer is empty will return timeout error,=
</div><div>how and what i can to do in this line to read from file instead =
of buffer?</div><div><br></div><div>Thanks=C2=A0for any help</div><div>Rega=
rds,Alexey</div></div>

--0000000000008cbdf905b1b8d7ee--


--===============2968277104154164390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2968277104154164390==--

