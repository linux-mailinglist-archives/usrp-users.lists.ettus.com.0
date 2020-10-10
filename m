Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D3D28A182
	for <lists+usrp-users@lfdr.de>; Sat, 10 Oct 2020 23:39:29 +0200 (CEST)
Received: from [::1] (port=45760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRMaL-0003T2-69; Sat, 10 Oct 2020 17:39:25 -0400
Received: from sonic315-14.consmr.mail.bf2.yahoo.com ([74.6.134.124]:44400)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jayl0583@yahoo.com>) id 1kRMaH-0003Ly-2m
 for usrp-users@lists.ettus.com; Sat, 10 Oct 2020 17:39:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1602365920; bh=jNAMZMtqdq+SHr3nqlp9uR6Dfbbnng+J8dma3BJAaqc=;
 h=Date:From:To:Subject:References:From:Subject;
 b=dbi8wxPkt9+EhlF2dU+gWSVn1LN8wy5KKCP2l/ic8Vj79i1cgmcSL1tl1Nc1f/FxFTJqA4eEswArBAH/HFy7uQqvyMP2r4lbRdEGaw+mQeOvVOgiYbg0RE8Ra4SyL8ONN6H9uibnuQPQEMThTuPdGA6PleEZMpl/fOVYr4dcYcgkPyMMX1OKBhLFzWzjZKaTBNPY7Q0BHSVxTMd8WY4UGv9/0etgL/EYvJX7FvyUbvH/X+bMjg8Merp6hE0lbmbjChBssOg7wjItR+r2ktJgDwRNtOBVD0ay1TrS+gIHxlEKfwqjnCQh9gbbDDRV2baI+KOkN0uHHC8eoe4B4c3Snw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1602365920; bh=ALCnkrGzK0UbdhvABTixbzZqjk8n3pd+oBzt1TsLSz8=;
 h=Date:From:To:Subject;
 b=bKYt0D8BoOVFRhz8si1/bozdwLn+X+lAw1qFGFs+fwMgsw1VOta2XnEuRZ6tMMq41OowfcW9RnUTRSjF7+FbJPscTJ041sf6OkczeA+ZeXzHLCxrhIzJXzgDc+tlRlKyKKxV/geoHoQ1yIltOnAuEn8CXIT4IlebDoaex3BPawFNVVDzuYc5ziN/7q6PnTnHFC8K0dwkgF2uA4q3JxRWs6uqL7tu3D49vqpf2HQbEF3xz+leSTA9CbG4Hv5/6WRqvNQw9rklj92P2P9pC8RvdSf3VBEnhX7mjlxE4K2jS1K3E6AznN6ygbsYBaCgZV8vbMNz9z8tJRPTDJu3OsmiUw==
X-YMail-OSG: gMolmeYVM1lrorqxqjyiSKMxE_.czG6NRvBfuVVPorn5F7nagOi00Ruk2P4WddK
 8byOT7cBzjaG8ZH8L.LvBCFPfc36WBKEOO_.OCWb9opVSHkKEondYz9cYfGZT.3eL2cyg2ViZuEu
 4HqLUSINmxtjmPDF65v2DrHDY7xf6orqLi20aI6R3U1r4GjiHmIq5c5P2NdSnRWiQnNAzctiw.Bc
 HRmSMuI0IhSttCkcIqnz0V.vTP0OvQxJggfSFXQTHC9gVvgECsPbjU2lS.R_N2jQaVVE8LPXSzAm
 fLexMauvdpHcFmuu3nENYEtXTIP3YIrE0wbvlIWz9vPsfDYdojAZZWfaunj7PTPh_sofE.4UV.Cl
 R6Hx2gO.Bvv7pJSMGDWrH4gczYAfURZw2q77.r6IUjt3QNYyRsonbitn6YKppiitrRuoZGEiaCU0
 N19EKgAuiIiXnyut0cGmTkOmlqNkDELLoKG1XteIgt9BfN6.3VHKTeNZ1JwluqI4VOLMcPJM.PYy
 G29GSPRXaXojPtVRuE7iWF3DIYrSSdPjX8M_mmCR6D.Cdjf7iRi2OBfLQQEdKCg9S57g4Eb3xlCK
 2FpBhr7bMMcmJXnDzfoakm99ZFVBh4x2.1LqHf_mGaTuWiPQ81F8ivjF3RKQXYG5yuPSynS.8Yzh
 AVRJO.Tn2o3qDt2XsLOBBLmfsA68vyVZ9uZ5K0e3XTCevvmyS2mF6awWUO.xHm34k01mKYnBOqnP
 dGd4cjNXgQyubF7Bd1LLpc7Edwcf9KgBRCocYzMHgV3tZHMwOHTuXW.7Vgoc6tHr6c_1of1JFR7G
 ikcuBOoUbNay36DCwXjw2M46V3mUQfNBb84K2JrdcxYcNJ8FbftxtVPQF3AC.kp6A9sHDQ50ThyH
 jdoUPN_wfWrBvV1SWYD8CAX5RVSGGrB9_REMkdI.UzzBZfUudCo7otuVCFZScwqbXIRXGD9wkUJl
 6R9PC_rAVZMKSGfQZHfC972A_AoESOhdoxjMDIuyTyK6NQSC6p84AGGKrT8YK7ReYckHJ1qmUYDN
 p7xEgrsWyegrS64UWnMjM.0_fSOku.NqG0E5zGCCevvWUW0QNOBDHpSQgmlSkSrtqzUf3xYrpX4e
 IQ_kGr5L0ZOZ_XDzkq0ApCL70rBdvlAw6ccQVCDPLJbpMu8WCh31SAYycbt3v9zls0W8WShwNsiE
 MHFSdoLqQaMKSly3lNVfERL0ZLu0cojp_rsYM9ZmP2NYM0e0tIieZ8PalHpDDiY0SKKqOTIzvYAj
 zGmjQWUARO0FSpYTObsoZhPGQAp_qEVPHN5Fo3SmWjsFGztZLziULeV9Fos74JRRDaEwSyOj0t5q
 L29G0V.BeMBthUvARCVg39WkffBAZ2tZXB1.o6H.Zf_58s1V67ri4p2AzapxP6R4UD2mHL7eZFcV
 cr8J_BckCUdMfqznFa5M7GsENcs5IIdvE
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.bf2.yahoo.com with HTTP; Sat, 10 Oct 2020 21:38:40 +0000
Date: Sat, 10 Oct 2020 21:38:39 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1140635092.131635.1602365919984@mail.yahoo.com>
MIME-Version: 1.0
References: <1140635092.131635.1602365919984.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16795 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:81.0) Gecko/20100101 Firefox/81.0
Subject: [USRP-users] B210 FPGA access
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
From: Jay Labhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jay Labhart <jayl0583@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0061660028212681136=="
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

--===============0061660028212681136==
Content-Type: multipart/alternative; 
	boundary="----=_Part_131634_721214410.1602365919983"
Content-Length: 1370

------=_Part_131634_721214410.1602365919983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am in the process of modifying the b210 fpga files and would like to know=
 if there is an interface that has been established for the FPGA and host t=
o communicate with each other.=C2=A0 I have seen a poke64 and peek64 but ha=
ve also seen set_user_register().
Can anyone share if the b210 has the FPGA to host interface?
ThanksJay

------=_Part_131634_721214410.1602365919983
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">I am in the process of modifying the b210 fpga files and would like to know if there is an interface that has been established for the FPGA and host to communicate with each other.&nbsp; I have seen a poke64 and peek64 but have also seen set_user_register().</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Can anyone share if the b210 has the FPGA to host interface?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks</div><div dir="ltr" data-setdir="false">Jay<br></div></div></body></html>
------=_Part_131634_721214410.1602365919983--


--===============0061660028212681136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0061660028212681136==--

