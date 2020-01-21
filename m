Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F158144057
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 16:18:10 +0100 (CET)
Received: from [::1] (port=36518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itvI8-00085b-OH; Tue, 21 Jan 2020 10:18:08 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:39659)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1itvI4-0007uZ-Ti
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 10:18:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579619843; bh=0r47cq5T3yizJ0rRpvt5vMzbBnGNvwxlgImwQeP8fgA=;
 h=Date:From:To:Subject:References:From:Subject;
 b=YcJO+Z7me0tpg22wlIt2C/QH+UJKrZLCoPzRKnWlc8kOSyioQlSxRbPcJ+3DOq8PPkgZ6YIiqQoG8B2UlSs/sPKonujTIPoh8UjpPp1XCxoTjQ5xQSpnofMjSqvfR85U+nIG/LkfwnHRVfdSOHKV0Tdhw7YGeN78td9aNyoyZtMnZ6mXjYFn+KP1R5eY6Lh+srlnvQHDEaGIOTQpen6KBw4ab3Ocif/61cX4zP1rUqVGmu693sCjkJWtKtIKNdgFOHj5EFxHdvvPij53GxPuJUdksLOkqI2jI/fufvcIa8sDVf3wG+tmo9OLld8EqWyGVkNxt/rZwuKxGDmUPwvgXA==
X-YMail-OSG: 58M9mGYVM1lyQ3q_IkXKlrdfdmw.DFllj7s1DToYcxAbOzgGX11GsM9X4IlAjH1
 cZWsdAL0JcFIb.AV4je6jL9eGrdMURDAy_e2TEZEAqooTh26pUXOXcfXYhGWK3FACYf54OpIWgGK
 YTPh9YfHF380raTjoi4yzzf1z_AKDw8wAdZx7Zs5hDeq0WshBRW_cD.fvSalKtxL.RvpXgSwpVI9
 Ef37qQZLAqWgSHfuLtF5ZflaPRXwPRj2V2wvVitudp4l5.0dF_aLXYBhnMtgm4vaOz7fkEx3KymR
 TrT1AH3icosOj4gh7i8yMWAaRDfv37J2bvm6R4NSAEGuZ7rQcZGHQMOfj9LT6C2L.vnsdjLPpbqt
 F2ier6NWra9ApzMd7U2dEbyh0FQiEdq87Zeq2Xd9UoEKVwryhHLSI30MmYkIMf1nXE9qB6I1AWtp
 PxgCJobBkv8z9.VpXWAb8Z7HA1Ar22j0w_3yr5UDcdjRfBVHONjamx05TY6t4eMZlSPfu8xt8Wet
 jMzl3wJTsmtkRETEbcLHHdbDRUOCn3ju5DrAhWtkUQLzoBKXs8_Cfs9_q4qcPtoDv9B35IdKuUKb
 2MPDQNfiEH1nPwbQ9Vv8d5w7tB0Oaish9wCWqJxPao4raj.L6diKTcKqo9DhHCaytXYKcm9WikTs
 diab2USuLo86AwfVXHOH5isF.FIQB3evoblhwseEG1P2D7qz54uVtsMMg6_meuUcGA1a5g7bwOUw
 g68p7Bi50fsdS3BzXFTupnDaT0.W3ugLARz21c.VvKSs8jR00eUY8_jhIr9zxlba1sR29YIvUtAo
 JVZel2aWNN5XFlQdR0DNQ.yE4HCAZQ.vGEwp__oX.ekzCJPPGIXLubOok49afGt4UOBzknc.Eu3f
 ddrjhpvBsab55Wgn13_SF8OlFHLOMO9BpOTi4TK7fvNv1xbZRC19H2uKRImHxHPtIjY336hEdW6T
 n8LfhNfOSaPn2p_s7Ne9RCh5jjgA7PLyyhLQ72z86z_d3fA2_9QJczjDz_UkKQUnKptj3nAtIrFj
 TV5Kwm2ht7A2Z1ul.7HhKwsEjkrBoyMFiQjWozEYz9.DGfaX9wAhB65GEtcJRn.cn1WwKcjuSmlU
 _dXT2t6GVwAAa0Jh2yq1V3UMR1ADPauZ_quIQNjGiyl0CQZDshxmTl_G9kH5_ge2UZjxObCuvqny
 qW53RQnRzkbX8cwzHLoM9u7zUa1GMMWSr_ye8ouqbqsYF9gOUeYao.A5pSOW3zdDJ1wCtFEv77tp
 eZUMZVSdCG7MYpb4YXDE6IkCXb9CMemclB_NW1lLxCkYywMH0kfQj1NijIpz6wvrG.Di_pca3_6K
 nrNvEEpfFnKlVnM0K4XV37mdG0g0hJxqN
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Tue, 21 Jan 2020 15:17:23 +0000
Date: Tue, 21 Jan 2020 15:17:19 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <573829199.1907169.1579619839390@mail.yahoo.com>
MIME-Version: 1.0
References: <573829199.1907169.1579619839390.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15077 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
Subject: [USRP-users] Ethernet controller speed negotiation issue
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
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5299138249092209181=="
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

--===============5299138249092209181==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1907168_331235016.1579619839389"
Content-Length: 2069

------=_Part_1907168_331235016.1579619839389
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0 =C2=A0Following is the configuration followed by issue desc=
ription. Have you experienced or someone reported=C2=A0similar issue in the=
 past with X552 Ethernet controllers?
Centos version: 7.7Ethernet controller: X552SFP adaptor: FTLX8571D3BCV-ITix=
gbe default version: 5.1.0Updated ixgbe driver to: 5.6.5INTERMITTENT Issue:=
 Some times the link never comes up and even if I bring down and bring up t=
he interface(ifconfig down/up). Even I tried probing ixgbe(rmmod/modprobe),=
 no luck.
PLEASE HELP
BR,Santosh

------=_Part_1907168_331235016.1579619839389
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D"false">=
Hi There,</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp; &nbsp;Followin=
g is the configuration followed by issue description. Have you experienced =
<span><span style=3D"color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue=
&quot;, Helvetica, Arial, sans-serif; font-size: 16px;">or someone reported=
&nbsp;</span></span>similar issue in the past with X552 Ethernet controller=
s?</div><div><br></div><div>Centos version: 7.7</div><div>Ethernet controll=
er: X552</div><div>SFP adaptor: FTLX8571D3BCV-IT</div><div>ixgbe default ve=
rsion: 5.1.0</div><div>Updated ixgbe driver to: 5.6.5</div><div>INTERMITTEN=
T Issue: Some times the link never comes up and even if I bring down and br=
ing up the interface(ifconfig down/up). Even I tried probing ixgbe(rmmod/mo=
dprobe), no luck.</div><div><br></div><div><b>PLEASE HELP</b></div></div><d=
iv><b><br></b></div><div dir=3D"ltr" data-setdir=3D"false">BR,</div><div di=
r=3D"ltr" data-setdir=3D"false">Santosh</div><br></div></div></body></html>
------=_Part_1907168_331235016.1579619839389--


--===============5299138249092209181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5299138249092209181==--

