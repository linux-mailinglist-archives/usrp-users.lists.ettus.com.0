Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DCE21B2DD
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jul 2020 12:00:23 +0200 (CEST)
Received: from [::1] (port=34426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtppK-0001MQ-13; Fri, 10 Jul 2020 06:00:18 -0400
Received: from mail-il1-f171.google.com ([209.85.166.171]:42639)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jtppF-0001Fd-E7
 for usrp-users@lists.ettus.com; Fri, 10 Jul 2020 06:00:13 -0400
Received: by mail-il1-f171.google.com with SMTP id t27so4551812ill.9
 for <usrp-users@lists.ettus.com>; Fri, 10 Jul 2020 02:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=PwsSaSNDSwru+UuwTDu5wivaPRFbxg7YQNsgZlN7F+o=;
 b=aF77M8txbMGU1SIzBfyLgCTAjPE9eEkUEBxUaoVmpHtCk7o0XdNeD5Owxtr07Pmr0A
 8FumyorHRGt2FAAowR71Ux93qEdA6jpZL9NGS+wirjgBQPTenmcL1L9HdJR5rDlnizGA
 Uv74VdNfBueifGn5pa51S57rqOH4YWa54bdgkI28sfWcSkNQ3G37ULnxreIt35wkZQMj
 6VuzNjSPPLK1HirG6p2pOL3pzGV2jH0rJyxnj3AXrcrJFlep/7d9zggehJqO1aQ2bwe/
 V5uk1VJl4Lrwt9ylXlhyA+klP5BOL4PXpgUK7/5rXCYSe+OKIav6ImK9SysnSd621WGg
 pVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PwsSaSNDSwru+UuwTDu5wivaPRFbxg7YQNsgZlN7F+o=;
 b=DnFHD1fyuOn0+wW+3Sl5euDYFsN/UgMI3b0bq8Qn7ptfZ/SytYIrp12EX74VNRZ3fd
 Jp5rUBu//KhN1t6MScZ5lF1vG17kgoHo/R+429/gmyk22qrstXTnManenmRaf7JxGV+k
 1HlRZgSvbgK7Bi4iObPE8mpG0MGuhcldd7pa/gsYf5bk6kT565GatctE9W2/NNdoCTmL
 9dgUstaN3TEw9HmDfDOgJbHFVKKrPc/Uj4LUPeIbDKO4CaZ/V13jWfbfjK0PjUiPl5mT
 DBi3pSiDo6gymNYD8lqHQKmjneESpjn2Dt8T91Fgq5ec0kOP98MbHfGAgRoXA1iSMrKO
 sGBQ==
X-Gm-Message-State: AOAM530YBW57NXY5BFGZNqnZk+f21bb4HvZmwg5mmSxg2F1+IgrzMoZB
 YH4/wn6izTMPMDRys2h9JbXjNm6kXa1k5YudAsIe5d9EJbg=
X-Google-Smtp-Source: ABdhPJz+4l+jZDMc29cYoQWKkVyCahoAGP1gORU3pM18ebevhJpRDQbXiJvhE8dBNl8mJnU6MG5BSeQZqftFGNguGwg=
X-Received: by 2002:a92:77d2:: with SMTP id
 s201mr16822655ilc.256.1594375172316; 
 Fri, 10 Jul 2020 02:59:32 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Jul 2020 11:59:21 +0200
Message-ID: <CAP2eGPhL=8q8gKaVrMtD0e856Jrdr=XrK74DkAvF+9_So9uOcQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Sync problem in custom DUC
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============1587996617275678322=="
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

--===============1587996617275678322==
Content-Type: multipart/alternative; boundary="000000000000c8e0c005aa136548"

--000000000000c8e0c005aa136548
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm customizing the DUC block to do it 2input:1output

input 0  ---> DUC --->
                                      add ---> output
input 1  ---> DUC --->

I have added an addsub module between dds_timed and axi_wrapper. Apparently
it works fine. I can see two tones in the output if the inputs are 2 tones.

But I have a synchronization problem. If input_0 is a sine and input_1 is a
sine with pi phase the output should be 0. And the output is 0, but after a
while (3 minutes) no. I think that the channels are out of sync before the
adder.

Any idea about what is happening?

Thank you :)

--000000000000c8e0c005aa136548
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I&#39;m customizing the DUC block to do it 2inp=
ut:1output<br><br>input 0 =C2=A0---&gt; DUC ---&gt;<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ad=
d ---&gt; output<br>input 1 =C2=A0---&gt; DUC ---&gt;<br><br>I have added a=
n addsub module between dds_timed and axi_wrapper. Apparently it works fine=
. I can see two tones in the output if the inputs are 2 tones. <br><br>But =
I have a synchronization problem. If input_0 is a sine and input_1 is a sin=
e with pi phase the output should be 0. And the output is 0, but after a wh=
ile (3 minutes) no. I think that the channels are out of sync before the ad=
der.<br><br>Any idea about what is happening?<br><br>Thank you :)<br></div>

--000000000000c8e0c005aa136548--


--===============1587996617275678322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1587996617275678322==--

