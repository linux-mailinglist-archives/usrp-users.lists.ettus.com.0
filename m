Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13507366B0
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 23:21:17 +0200 (CEST)
Received: from [::1] (port=58852 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYdLL-0007YM-Ti; Wed, 05 Jun 2019 17:21:11 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:41383)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dario.fertonani@gmail.com>)
 id 1hYdLI-0007U0-SW
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 17:21:08 -0400
Received: by mail-oi1-f170.google.com with SMTP id b21so78401oic.8
 for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2019 14:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=B0CLOwqjIPNKTWJLOx5noB/X/NfLBOhbv4HuV3tTRgs=;
 b=J7NThGAeuCjmHOWbCzaPZYPhRQihYyLQBieen5G2Eqy9ONGclnk9UoCs2DMKiwyEg0
 s84fnDkSrsGGEtVdFypsCJdZeuMjbCuWbxhIvOPv+EB9gexb7IG7PYyZJTTqEImume1z
 2Kqo91UT1R7Wv03CKsOOTrY0j19VR1tsmWrOblXru7ASkr2agy1v8yye9ighdWI218Dg
 G47Tsx/BOg5dwm9IkxJefsDfoBRdAd22lpeNVhpoGck3xbJ0VheTg5wNuXbYvwCQx8OT
 qDYxnrLmgIEJ2zDPikuq/Rk489wGpgOFZXC/k/rCCgr4KlmxGsvJhP5SA+6aaJLcU4lh
 1QIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=B0CLOwqjIPNKTWJLOx5noB/X/NfLBOhbv4HuV3tTRgs=;
 b=cpbMo4sfXE7Ly97LmQgsKH+RSNHojPUBjWgy2Z1Lr3EDDhgJVJarCmlWT2vb/8NNrM
 DFs93bUbLxNo3IdfJh+SzwBNmAjJvP6l0uqi3yQE4x6Y/RImAmiaWht16KhFVJDwtKnu
 CUGBCYG7VNjA4R1B4w2iXd+tAoW6OzARtZBrcHF5tsWRG8LH540sK5agvMzDm6pshiq4
 58dqp+rLedxF4yONlMWAkfWRXtbfA3B4MCjChK8Y0aQXMYlLdTyHk7SxtOUZvWgA1Gjo
 DPJsgwrR3PCB1jhvcZF6H6h6g2wbfVpPP/BAHEjImLGlXTKHMCjQ3CFnxVtqYddF6zo1
 fh1A==
X-Gm-Message-State: APjAAAVRZR9TiUp6VJNNDWgQ/SsiLn2dY8mrMmk+iHsm+OkGIocDq9yM
 pIyhwgaZCkRuixACY4Futt6jbgm4gMs2bKTxHMwSx5cG
X-Google-Smtp-Source: APXvYqwaSfMIeTJFtzeUUlVeyHy7jDSqM3uJfJCTdfIluaRGeCmY6ELSLYTep27omlBEAe/kzFBii1PxHDAoewGjnuY=
X-Received: by 2002:a05:6808:6c7:: with SMTP id
 m7mr4608422oih.43.1559769627470; 
 Wed, 05 Jun 2019 14:20:27 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 5 Jun 2019 14:20:16 -0700
Message-ID: <CAJGEdAjVmhPXK2=nd0FKSZ_t8MeWMgKTmmNqoZJR3mZL6th+cQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Use of dsp_freq in uhd::tune_request_t
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dario Fertonani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Fertonani <dario.fertonani@gmail.com>
Content-Type: multipart/mixed; boundary="===============7927597338918683570=="
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

--===============7927597338918683570==
Content-Type: multipart/alternative; boundary="00000000000093b333058a9a2ad4"

--00000000000093b333058a9a2ad4
Content-Type: text/plain; charset="UTF-8"

I'm trying to move the "DC offset" out of the main spectrum by using the
dsp_freq field in uhd::tune_request_t. This doesn't seem to work on B210,
meaning that the following code functions properly with DcOffset_Hz=0 but
not, for example, with DcOffset_Hz=10e6. In all these tests the master
clock rate is large enough to fit DcOffset_Hz and the spectrum of interest
easily. Anything obviously wrong?

Thanks,
Dario

uhd::tune_request_t uhdTuneRequest( const double &CarrierFreq_Hz , const
double &DcOffset_Hz )
{
    uhd::tune_request_t tuneRequest( CarrierFreq_Hz - DcOffset_Hz );
    tuneRequest.args = uhd::device_addr_t( "mode_n=integer" );
    tuneRequest.dsp_freq_policy = uhd::tune_request_t::POLICY_MANUAL;
    tuneRequest.dsp_freq = DcOffset_Hz;
    return tuneRequest;
}

--00000000000093b333058a9a2ad4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"arial, sans-serif">I&#39;m trying to mo=
ve the &quot;DC offset&quot; out of the main spectrum by using the dsp_freq=
 field in=C2=A0</font>uhd::tune_request_t. This doesn&#39;t seem to work on=
 B210, meaning that the following code functions properly with=C2=A0DcOffse=
t_Hz=3D0 but not, for example, with=C2=A0DcOffset_Hz=3D10e6. In all these t=
ests the master clock rate is large enough to fit DcOffset_Hz and the spect=
rum of interest easily. Anything obviously wrong?</div><div><br></div><div>=
Thanks,</div><div>Dario</div><font face=3D"courier new, monospace"><div><fo=
nt face=3D"courier new, monospace"><br></font></div>uhd::tune_request_t uhd=
TuneRequest( const double &amp;CarrierFreq_Hz , const double &amp;</font><s=
pan style=3D"font-family:&quot;courier new&quot;,monospace">DcOffset_Hz</sp=
an><font face=3D"courier new, monospace">=C2=A0)<br>{<br>=C2=A0 =C2=A0 uhd:=
:tune_request_t tuneRequest( CarrierFreq_Hz -=C2=A0</font><span style=3D"fo=
nt-family:&quot;courier new&quot;,monospace">DcOffset_Hz</span><font face=
=3D"courier new, monospace">=C2=A0);<br>=C2=A0 =C2=A0 tuneRequest.args =3D =
uhd::device_addr_t( &quot;mode_n=3Dinteger&quot; );<br>=C2=A0 =C2=A0 tuneRe=
quest.dsp_freq_policy =3D uhd::tune_request_t::POLICY_MANUAL;<br>=C2=A0 =C2=
=A0 tuneRequest.dsp_freq =3D DcOffset_Hz;<br>=C2=A0 =C2=A0 return tuneReque=
st;<br>}</font><br></div>

--00000000000093b333058a9a2ad4--


--===============7927597338918683570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7927597338918683570==--

