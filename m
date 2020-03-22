Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD4618E74D
	for <lists+usrp-users@lfdr.de>; Sun, 22 Mar 2020 08:13:36 +0100 (CET)
Received: from [::1] (port=36460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFunc-0004oH-EM; Sun, 22 Mar 2020 03:13:32 -0400
Received: from sonic310-13.consmr.mail.bf2.yahoo.com ([74.6.135.123]:44180)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dspspouse@aol.com>) id 1jFunY-0004jB-BG
 for usrp-users@lists.ettus.com; Sun, 22 Mar 2020 03:13:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1584861167; bh=EJ4Z5yRb2SbdDpXwFg/jpAyo0/4sEIAswQwk3Vjd4oE=;
 h=Date:From:To:Subject:References:From:Subject;
 b=tML4eZBB2ihkiCm2PWZKP2pH7ZvwchlQw8b/2jbG/GPofCd+RR6sz8i1X/8wdunj9k5/e9yuPGFPI/5l4vx06h7O3auINRYIYGsDxXsgR+5DAMPD1f0NvIC7hP7oQMag2PSH8dtKgeeZaJuBitsFwPDgU0vj+dgiwgPSMD9odMkLah/4v5AZ/KQFLg4fpzJk+ry3fpzKPNEgFA2qEYzI7nPNxYti5cMkrfdiGA7sBc0y0KQGWBfd8L/iEpinShGB4/wl4PUgp+hEy+a+YREX0ZW1zLsia8CNC0jKf50v9I0z9knr4O20KTFS+C9/ROHzFPWFmHtHtO2DBpg5jYGIKA==
X-YMail-OSG: TZhdbboVM1nxeLKApGFBjM9sY7lmTnjgGZkukkxXD4kvgZifiw_zUzcA1T.0NWt
 udZgPGybcRly2bQ2rAmZkqstdY_HzWplpglhOXJ6Myx_sTWjFFEZJfennBqW.tzXHODa7lv1RMgW
 xGEuxs6Ys.T17cRLtFBtqCFRYAGtOGCCncvnB6j9aAkVWz8jtEnVIB.ZqBspH1SYKEUVAjNoT3Ma
 iKqIZFCbrGzZgfFDyf6Uk5XlcxBwVy3Hu5wEcUQycOjBwowh9wwFWTLerqTFzaJjk66_L4Ecsalx
 UFjefosodIQ1C5DXg0YOAz0EHqOS4zl7u3sCSsFgtoXvl4Rrtz.vACynNZNYEqQczBUkg43iHjoA
 3zungd3O49hdOSgfLTJrOHAhmpAQak7.HgSX7PMieB_Ah8jRxmM0ZKXxQUGudV7Olkta3UrYKymh
 4izSb10dSYYX810co6pQcnwYUY0Fsu_PWtFVtZGwDoo7AKHgMqWRi1E85oxRZiP3fxZGtxtBNQKk
 kl7cifiWKh8WSqB_GPPMWCthTztlemes7TZhNxRYY0yrrA6HbpUtqlDY_vMGDmuu89L.3uR9ZA9H
 pBCOpX04Fbxoh4x6jAzf89XnyIzhTxBS2pKVzY_WGq_Aa1JX4XALVl2jhM99XJ3PJwJ70zWcra_A
 EdnWDFkKLZIKpU.S_zBiSoausgidYc.xhqip3pV4ysRUFvawj_4XqrcPgJDWoj3ver6fR9vgqJFS
 GsHQ7QN8qfq.ogjdo3AgdjScjehKutYHSSzZOnGJ8NwhXACTI7yszUJTIOVZL6_86Mwo2Tjz94cw
 GFyb.TK20FaNSGgyN1dEfyPe0j11swuZNM8zLPQxhcassaw6P1azeqjqEFHtFr0_6S9qXZWaSmqq
 bbVbFHdQMtENBa0509HYnzh004kJOfNW1G_73BG.H2uktVpzpdH3rSu..3shYXawhhSBsEpXWc3C
 LXgai4zpYhDTxg4Dz6LtNDg79EF8vq74oU0ENTL1Q.a_riZvKJjwM.21lE5yyYhPeDReA4tBSgM_
 f6U.lbp2WPzFZ_g4h6UPMIMh0S5IRqxIvoOiWJHc0Oo_TXBJpwNzZxnq9p9GAMnymrr.1zymx80y
 e48NdxtaD00TmdwXVpwocKy.5wQJPFrVeetxK.IpZb5Uiixxl.84zeACI0zURwe9_WVDHlbHDF7u
 3ePY7RRXdFHSqkqZIyFyDwkKnrz0Qq0iKgUcYA5srJkt9KXReTOqsV51Ol9q8nY2O_hhZur2_XZ8
 dP.4ioLmeDQa6edh4Has3lfHMQSskZAxhSCimoLdlgoFfejAlpLNCAnQyjMi58VVz46ZvN607Kn4
 50AS71P2bLBg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.bf2.yahoo.com with HTTP; Sun, 22 Mar 2020 07:12:47 +0000
Date: Sun, 22 Mar 2020 07:12:44 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <94457129.62162.1584861164076@mail.yahoo.com>
MIME-Version: 1.0
References: <94457129.62162.1584861164076.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15518 aolwebmail Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149
 Safari/537.36
Subject: [USRP-users] USRP N321/N320 combo
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
From: Len via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dspspouse@aol.com
Content-Type: multipart/mixed; boundary="===============7419415568878077275=="
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

--===============7419415568878077275==
Content-Type: multipart/alternative; 
	boundary="----=_Part_62161_1948630503.1584861164075"
Content-Length: 4194

------=_Part_62161_1948630503.1584861164075
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,I need 4 Rx ports which are cohered and synchronous so I'm going to con=
nect up the N321 and N320 USRP SDRs per the recommendation in the Ettus doc=
s and app notes.=C2=A0 Both the N321 and N320 will be configured to provide=
 Command and Control (e.g. Management) using the 1 GigE port and data strea=
ming using the 10 GigE port (e.g. SFP1).=C2=A0 All ports being used in this=
 configuration, namely the two 1 GigE ports and the two 10 GigE ports, are =
to be connected to a server.=C2=A0 We'd like to conserve ports on the serve=
r so the plan is to use a network switch to handle the Command and Control =
traffic and a separate 10 GigE switch to handle the streaming data.=C2=A0 W=
hile I don't think using a network switch to handle the Command and Control=
 traffic will cause a problem, I'm less certain about using a network switc=
h to handle simultaneous streaming Rx data from both SDRs.=C2=A0 I would th=
ink there could be issues with packet collisions, dropped packets and/or in=
correct packet ordering just to name a few.=C2=A0 However, computer network=
ing is not my strong point so I can't be certain if my concerns are valid.=
=C2=A0=C2=A0
To that end I have the following questions:1) Has=C2=A0anyone in the commun=
ity tried using network switches between the SFP1 10 GigE ports and a serve=
r instead of just straight point to point connections and was it successful=
??
2) If not successful, what problems were typically encountered??=C2=A0=C2=
=A0
3) If successful, what 10 GigE switches (e.g. make, model number, etc...) d=
o you recommend for my application described above??

Thanks,Len=C2=A0 =C2=A0 =C2=A0 =C2=A0
------=_Part_62161_1948630503.1584861164075
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


<div style=3D"color:black;font: 10pt arial;">All,
<div>I need 4 Rx ports which are cohered and synchronous so I'm going to co=
nnect up the N321 and N320 USRP SDRs per the recommendation in the Ettus do=
cs and app notes.&nbsp; Both the N321 and N320 will be configured to provid=
e Command and Control (e.g. Management) using the 1 GigE port and data stre=
aming using the 10 GigE port (e.g. SFP1).&nbsp; All ports being used in thi=
s configuration, namely the two 1 GigE ports and the two 10 GigE ports, are=
 to be connected to a server.&nbsp; We'd like to conserve ports on the serv=
er so the plan is to use a network switch to handle the Command and Control=
 traffic and a separate 10 GigE switch to handle the streaming data.&nbsp; =
While I don't think using a network switch to handle the Command and Contro=
l traffic will cause a problem, I'm less certain about using a network swit=
ch to handle simultaneous streaming Rx data from both SDRs.&nbsp; I would t=
hink there could be issues with packet collisions, dropped packets and/or i=
ncorrect packet ordering just to name a few.&nbsp; However, computer networ=
king is not my strong point so I can't be certain if my concerns are valid.=
&nbsp;&nbsp;</div>

<div><br>
</div>

<div>To that end I have the following questions:</div>

<div>1) Has&nbsp;<span style=3D"font-size: 10pt;">anyone in the community t=
ried using network switches between the SFP1 10 GigE ports and a server ins=
tead of just straight point to point connections and was it successful??</s=
pan></div>

<div><span style=3D"font-size: 10pt;"><br>
</span></div>

<div><span style=3D"font-size: 10pt;">2) If not successful, what problems w=
ere typically encountered??&nbsp;&nbsp;</span></div>

<div><span style=3D"font-size: 10pt;"><br>
</span></div>

<div><span style=3D"font-size: 10pt;">3) If successful, what 10 GigE switch=
es (e.g. make, model number, etc...) do you recommend for my application de=
scribed above??</span></div>

<div><span style=3D"font-size: 10pt;"><br>
</span></div>

<div><span style=3D"font-size: 10pt;"><br>
</span></div>

<div><span style=3D"font-size: 10pt;">Thanks,</span></div>

<div><span style=3D"font-size: 10pt;">Len&nbsp; &nbsp; &nbsp; &nbsp;</span>=
</div>
</div>

------=_Part_62161_1948630503.1584861164075--


--===============7419415568878077275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7419415568878077275==--

