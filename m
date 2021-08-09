Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D4E3E497E
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 18:11:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42910384E25
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 12:11:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="oMuJoAvJ";
	dkim-atps=neutral
Received: from sonic307-1.consmr.mail.bf2.yahoo.com (sonic307-1.consmr.mail.bf2.yahoo.com [74.6.134.40])
	by mm2.emwd.com (Postfix) with ESMTPS id 25AD43845A7
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 12:11:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628525467; bh=dMED4coSjNgbN0tS+89eQnRKWFShARq/jk9stfuJ7S8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=oMuJoAvJQAsqv1btBa0xlhh7FdfRwOe7QC7zOzvqHwv8CzGaJkMReL70w0lohZrNi8EBKsQ0nkFPUlnuETPWa8t/sD23x5WV4zUAQPPKs1Hks3hmXI/DXMtSB49siG1H2HXhBEYeeAsjd19Rq6/xGU0O7r6cBR/BI3DZtwaBgWptLBi4vNRr39oZ+bn4u1LxMiYeIT9EsGXajUFFket41ADhwxxfTlJ8QCUG1CWZFGZyRBnBNxTmoRQJ6GU79PdyOhfWN07HDY/Ef7uD7lsQXfxH1EOtPDkEUc65a+cgi9G/M3GnbjEtxgeKSWLAUFpbdBxVeq5CxpuINEfx7I3kQA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628525467; bh=P7DYBxnzDCaHiD9/OX/C/n+eo11BugLARxSGI5Ul1u4=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=a1ibmgte6mUprFiHjeZ+WxDHXdJE2uNBrgMEGnvrRLMQAFcgrCW1meyfbtmvLK4bhxyYxU5VTsgdP+WgF1CA4xy4IC6FZirfwIy/qDQy+iGSGOsm1Dq6gJ0Yz6XDFsvTtnkTnQJhyBj3S7wef9qCLRiwjhCFvsmY02BP2cEgS05fRuGL6A9nJX9VpNgIe+eDpDlwwJmlATpOm+iU7EW0mjl74nQ4IVjvj80y7IN7Pj7RTk5fdP4NZmVnx0k4KrCz9Lt3rjTdwXRaTjKH8rnq1p1Qwp4+NvYGkFw2Qbn6k6AO7nKFZN7EcMWe27abnvuFomDtWLgqbvVXwMDn6dYnOw==
X-YMail-OSG: _jDaI4EVM1lCNr3JCZtWZJkF2V8kOUS6cF7X8SN16zxUwvmq3AhoumD6qCTCoIW
 ttvNVYcJMYUDrC_vZikGndtxjFOz0q5dFtnfCUv3IZrKxN4O.vMV9mxyE74ZcaxX_YnRGEnOi5rn
 a71oXRBOOfwtww7OFL6.bUmS0rOhv6yqn5ynaOGXu2WhcGVOyVxL4RETsdBh3ZJqhbh_Frw3DxxY
 Qg_zd51TWIlFA8sntyaM6n5Iy7hGzr88bA3BgUimEgPhxaa1v0Lb7XhN7a6d83h0U89hpOcY_9Af
 9rbFD_e1RoRhiyoYIErzXBdepCprW5DzFE8yUdVSg_WYYFvetDGssxJSsTdjobLFhwIu7JK6X5E9
 t7NzlGPYfxAh.4dlBLj9v_Our5m9CFL4BIjASudizVwAC5G1B_CfW1rIwbvX_yRb5Nh_0_yJDSfj
 6C84iar4XOa2V4dQXHv0FFQEC3_RGC6ljIJNnptCSkg7RHXALck69HPNixHuoXvxYZfbxquN0ge5
 fQJQSLfDz5Cu3PUgKLqn1EyTiIiOCyGjS06HphpbN4wcNZejhgmHfSkdI9fqwrIVVCRRmU4rATF0
 XY4EDM5fc6iHnHy8f3TBGVyyWjalSXprrp68XhgPyUGH4lQj6ei81n9ec6Z4XB2CWgvmPEnORAWe
 ay46kROcMMPqzUw6pzvwik4p5m.uGIrIw1sJUC6pXP1b4z8QADog9WiFdvC08oPR3AS4P41UlD9T
 yP3vAYXGf4JN8wADORMOSevUcEQDOEuAFD_QKKYPLlkcgWcWwU41RHgF3y6QrwOMRdH7V8eQtM4G
 ZNArAfB_msRLbH35LyZohwm5rBKS.BsxPpEDsymr_ZO.TgK7tHuePtcBXrdTF199NMr1RnKOgRUm
 2iQrWy_7V91JKC_u1Q4aG.zrTjruNMYIddlkYya8nYcfsxrCjwUJ44LF4zkhw42zqpH__LDB0Eom
 MkGL17q0n_ehNsfZnWUgYx5gdH1N3BVkgopUy_VzdNCowCY0RrLhej6O_lu6HTw0OrtUzxuKzE7R
 56CtSCj.R4PmpLZX9CBjDgbtc5NrKAW6.tWG3EA09zO6m06lNOddHfdok_MyAALt3qkUDrV9cZZ6
 VDuCrGQ1GXbmAemsG1Ktxr6tqt8bLFEW9w3C8KujZYCzSxTWScYyHVL5s.U4tBS8OvSvAwS.g65F
 ic72wLQ8s1v2GErFj9UiRBCNW5zbAQotfREDnilXpQFK35ebS9YMbHU7oc_DxBjt1xEhliebbwug
 a_Z2P2wvlWTH5TGvoayw5Pk8liyQc6Ei8N9YPZmf_Uhzore8qQDoQwCDtQwFtN2WcmqP5RtFNi5O
 5LBK.IQ2U.cEfcIc_1dPpOa_WBu14vmt.0utpWKm2GCqW6InRQfiHGI2Fz.1T2SYzASBmfDp3jyp
 DcufISjevIhezgSP3JxIGP7_gw1X47mNvTUbr0wZ7yrYeGtXyL_VWaUnudxG4YTjzxhBko.znD.2
 joFkOOO2BCWKaPPg.pGxEyFmJ0b41Py5TxUFj9PSgbLi6EXi8DJrj2jveEokSpLMCckH4FDCeb6s
 tD9w9gf9QjQ5cdw02CMHq2voa6QUK7E9.MWwQYRsFiC9Y8fFniNQg.kmBcooWI7yKgWkV4IqBYdY
 BD0K_9k.SD0Rgk.jr7P_uzGTAqMqtvlzrhR1aK4d2PXJKzaLgXQHGSuvBoJbfkQFBdOvMordQLc_
 o70WT1xV0aKiECcRMrE.DiDoOeiAonY4j5sX8VQ9oMkPJ91aI9L_Np.GpETo5NXdSFnX9OfFkXeU
 IsmBVwyDlpMOT.6V4GrYW9PzlWgQ9oS56o595.fun0I24KJzSwR8sNJXN71NAv2GKIijgUA4y3pE
 qOK5Ui2VM.klNXkQ7o5CHx7Llp5mATCvu8YcxwBlFTQ.ccnQ5TMHzJxYThNXI6_ztGQsVDHBFr57
 VlZg28qeFkTbvsCQR9Op7JrJuYLE3TpHSpGChMaxlXVgxTObYE1Z_n_5RBapC5qYo_oxtqLjUQ.v
 fhSEPL1OA7D3CWB31grQETt3Utmu8iw.lxAUHy22yGgJb..jLbQanXhAeK116.AxExk0GSbCEpiT
 xQmBzsxqqdgvze_GaSgtvb3h.sby.E.b7Kr23mnBQUdk6uI9xV3_1jt3DrV3GGaIdq9nBqKChFbF
 FxU2EnpniYoab0XU.9LjhthVKbC_VEj51dGpxEWe0HZcYaiPvp_BV6JT_6ies3hyau1l5LSFAJvX
 yUN3Ho8WDhybT2ucsM57yDuBnnbVrqNQyMGqbrLL1CTFX.HicjGsB_IyTikkQzodc9jZnxIn0L51
 idEM.MZgdMP_ju8e4UW7iHipTcgt78h_8kGpDxg5KW5U9eudk8pg1nkj3h_XBXH7hW_5huQDOgea
 imqpWffVDwqllIrlqkXbsNguRTodC6uxWiBhtRMfjGTb6PbiwzP9IxkX_1bjSiKZ.wUgvNc9BvZT
 UPIlJk2fw1mndaamA7CFS3KIYakK8fyfYmXIM0A1hyRAKvNOi_Vo9AN0Pc7pp9Eg7Au5FEHKLD74
 WW.ByYwztCsHcbbJLdRb6xwB2SoC0_aByEXrfWcCIoVzqrBlfDnLMMmHGUmlJGBNGOpcr8Q--
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Mon, 9 Aug 2021 16:11:07 +0000
Date: Mon, 9 Aug 2021 16:11:03 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <67539975.406248.1628525463281@mail.yahoo.com>
In-Reply-To: <221044459.342469.1628517452268@mail.yahoo.com>
References: <1343769836.268037.1628477116595.ref@mail.yahoo.com> <1343769836.268037.1628477116595@mail.yahoo.com> <61112AE8.4050100@gmail.com> <221044459.342469.1628517452268@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: L3ZBVM43ITG7KJ4CDN477K3DIJWSWCBI
X-Message-ID-Hash: L3ZBVM43ITG7KJ4CDN477K3DIJWSWCBI
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Failure to create rfnoc_graph" error when updating FGPA on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L3ZBVM43ITG7KJ4CDN477K3DIJWSWCBI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2620348172624700744=="

--===============2620348172624700744==
Content-Type: multipart/alternative;
	boundary="----=_Part_406247_1677884262.1628525463279"

------=_Part_406247_1677884262.1628525463279
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Also, I should have mentioned that I'm connected to the device via the cons=
ole JTAG interface, however, I believe this interface may only be for comma=
nd and control of the N310. Unfortunately, I don't have an SFP adapter so I=
've been trying to load the FPGA image onto the device using JTAG and I bel=
ieve this can only successfully be done using the SFP port. Can someone con=
firm this for me.=20
    On Monday, August 9, 2021, 9:58:15 AM EDT, Tellrell White via USRP-user=
s <usrp-users@lists.ettus.com> wrote: =20
=20
 =20
MarcusNo, I haven't. This is a new VM I created running Ubuntu 18.04. Check=
ing to see if there's an active firewall results in the following:=20

tw@tw-virtual-machine:~/uhd$ sudo ufw status
Status: inactive



    On Monday, August 9, 2021, 9:18:04 AM EDT, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote: =20
=20
  On 08/08/2021 10:45 PM, Tellrell White via USRP-users wrote:
 =20
  Hello=20
   I'm currently trying to update the default fpga image on a usrp n310 and=
 I'm getting an error. This a print out=20
 =20
=20
 tw@tw-virtual-machine:/usr/local/share/uhd/images$ uhd_image_loader --args=
 "type=3Dn3xx,addr=3D172.37.104.131" --fpga-path=3Dusrp_n310_fpga_HG.bit
 [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.heads-v=
4.0.0.0-13-g240c7fdd
 [INFO] [MPMD] Initializing 1 device(s) in parallel with args:mgmt_addr=3D1=
72.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fpga=3DHG,claimed=
=3DFalse,skip_init=3D1
 [INFO] [MPMD] Claimed device without full initialization.
 [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
 [INFO] [MPM.PeriphManager] Installing component `fpga'
 [INFO] [MPM.PeriphManager] Installing component `dts'
 [INFO] [MPM.RPCServer] Resetting peripheral manager.
 [INFO] [MPM.PeriphManager] Device serial number: 316CD05
 [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
 [INFO] [MPM.PeriphManager] init() called with device args `clock_source=3D=
internal,time_source=3Dinternal'.
 [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
 [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward CHD=
R packets to from eth0.
 [INFO] [MPMD] Initializing 1 device(s) in parallel with args:mgmt_addr=3D1=
72.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fpga=3DHG,claimed=
=3DFalse,addr=3D172.37.104.131,find_all=3D1
 [WARNING] [UDP] The recv buffer could not be resized sufficiently.
 Target sock buff size: 2500000 bytes.
 Actual sock buff size: 212992 bytes.
 See the transport application notes on buffer resizing.
 Please run: sudo sysctl -w net.core.rmem_max=3D2500000
 [WARNING] [UDP] The send buffer could not be resized sufficiently.
 Target sock buff size: 2500000 bytes.
 Actual sock buff size: 212992 bytes.
 See the transport application notes on buffer resizing.
 Please run: sudo sysctl -w net.core.wmem_max=3D2500000
 [WARNING] [UDP] The current recv_buff_size of 212992 is less than the mini=
mum recommended size of 816000 and may result in dropped packets on some NI=
Cs
 [WARNING] [UDP] The current send_buff_size of 212992 is less than the mini=
mum recommended size of 307200 and may result in dropped packets on some NI=
Cs
 [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErro=
r: IOError: recv error on socket: Connection refused
 [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Environm=
entError: IOError: recv error on socket: Connection refused
 [INFO] [MPM.PeriphManager] init() called with device args`find_all=3D1,fpg=
a=3DHG,mgmt_addr=3D172.37.104.131,product=3Dn310,clock_source=3Dinternal,ti=
me_source=3Dinternal'.
 [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to forward CHD=
R packets to from eth0.
 Error: RuntimeError: Failure to create rfnoc_graph.
=20
  =20
 =20
 You have you used a USRP device successfully on your host PC before?=C2=A0=
 I wonder if your firewall is blocking packets to/from UDP 49152?
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_406247_1677884262.1628525463279
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpccf5363eyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br></div><div dir="ltr" data-setdir="false">Also, I should have mentioned that I'm connected to the device via the console JTAG interface, however, I believe this interface may only be for command and control of the N310. Unfortunately, I don't have an SFP adapter so I've been trying to load the FPGA image onto the device using JTAG and I believe this can only successfully be done using the SFP port. Can someone confirm this for me. <br></div>
        
        </div><div id="yahoo_quoted_8874763480" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Monday, August 9, 2021, 9:58:15 AM EDT, Tellrell White via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv5011282540"><div><div class="yiv5011282540ydp2559e301yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br clear="none"></div><div dir="ltr">Marcus</div><div dir="ltr">No, I haven't. This is a new VM I created running Ubuntu 18.04. Checking to see if there's an active firewall results in the following: <br clear="none"></div><div dir="ltr"><br clear="none"></div><div dir="ltr"><div>tw@tw-virtual-machine:~/uhd$ sudo ufw status<br clear="none">Status: inactive<br clear="none"><br clear="none"></div><div><br clear="none"></div></div><div dir="ltr"><br clear="none"></div>
        
        </div><div class="yiv5011282540yahoo_quoted" id="yiv5011282540yahoo_quoted_9129661450">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div class="yiv5011282540yqt8701757017" id="yiv5011282540yqt37084"><div>
                    On Monday, August 9, 2021, 9:18:04 AM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br clear="none"></div>
                <div><br clear="none"></div>
                <div><div id="yiv5011282540"><div>
    <div class="yiv5011282540yqt3811638609" id="yiv5011282540yqt03735"><div class="yiv5011282540moz-cite-prefix">On 08/08/2021 10:45 PM, Tellrell White
      via USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      <div class="yiv5011282540yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr">Hello <br clear="none">
        </div>
        <div dir="ltr">
          <div>I'm currently trying to update the default fpga image on
            a usrp n310 and I'm getting an error. This a print out <br clear="none">
          </div>
          <div><br clear="none">
            <br clear="none">
            tw@tw-virtual-machine:/usr/local/share/uhd/images$
            uhd_image_loader --args "type=n3xx,addr=172.37.104.131"
            --fpga-path=usrp_n310_fpga_HG.bit<br clear="none">
            [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
            UHD_4.1.0.heads-v4.0.0.0-13-g240c7fdd<br clear="none">
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,skip_init=1<br clear="none">
            [INFO] [MPMD] Claimed device without full initialization.<br clear="none">
            [INFO] [MPMD IMAGE LOADER] Starting update. This may take a
            while.<br clear="none">
            [INFO] [MPM.PeriphManager] Installing component `fpga'<br clear="none">
            [INFO] [MPM.PeriphManager] Installing component `dts'<br clear="none">
            [INFO] [MPM.RPCServer] Resetting peripheral manager.<br clear="none">
            [INFO] [MPM.PeriphManager] Device serial number: 316CD05<br clear="none">
            [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br clear="none">
            [INFO] [MPM.PeriphManager] init() called with device args
            `clock_source=internal,time_source=internal'.<br clear="none">
            [INFO] [MPMD IMAGE LOADER] Update component function
            succeeded.<br clear="none">
            [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface
            to forward CHDR packets to from eth0.<br clear="none">
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,addr=172.37.104.131,find_all=1<br clear="none">
            [WARNING] [UDP] The recv buffer could not be resized
            sufficiently.<br clear="none">
            Target sock buff size: 2500000 bytes.<br clear="none">
            Actual sock buff size: 212992 bytes.<br clear="none">
            See the transport application notes on buffer resizing.<br clear="none">
            Please run: sudo sysctl -w net.core.rmem_max=2500000<br clear="none">
            [WARNING] [UDP] The send buffer could not be resized
            sufficiently.<br clear="none">
            Target sock buff size: 2500000 bytes.<br clear="none">
            Actual sock buff size: 212992 bytes.<br clear="none">
            See the transport application notes on buffer resizing.<br clear="none">
            Please run: sudo sysctl -w net.core.wmem_max=2500000<br clear="none">
            [WARNING] [UDP] The current recv_buff_size of 212992 is less
            than the minimum recommended size of 816000 and may result
            in dropped packets on some NICs<br clear="none">
            [WARNING] [UDP] The current send_buff_size of 212992 is less
            than the minimum recommended size of 307200 and may result
            in dropped packets on some NICs<br clear="none">
            [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
            EnvironmentError: IOError: recv error on socket: Connection
            refused<br clear="none">
            [ERROR] [RFNOC::GRAPH] Caught exception while initializing
            graph: EnvironmentError: IOError: recv error on socket:
            Connection refused<br clear="none">
            [INFO] [MPM.PeriphManager] init() called with device args
`find_all=1,fpga=HG,mgmt_addr=172.37.104.131,product=n310,clock_source=internal,time_source=internal'.<br clear="none">
            [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface
            to forward CHDR packets to from eth0.<br clear="none">
            Error: RuntimeError: Failure to create rfnoc_graph.<br clear="none">
            <br clear="none">
          </div>
        </div>
        <br clear="none">
      </div>
    </blockquote></div>
    You have you used a USRP device successfully on your host PC
    before?&nbsp; I wonder if your firewall is blocking packets to/from UDP
    49152?<br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div><div class="yiv5011282540yqt3811638609" id="yiv5011282540yqt02357">_______________________________________________<br clear="none">USRP-users mailing list -- <a rel="nofollow noopener noreferrer" shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" target="_blank" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a rel="nofollow noopener noreferrer" shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" target="_blank" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div></div>
            </div>
        </div></div></div><div class="yqt8701757017" id="yqt82341">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_406247_1677884262.1628525463279--

--===============2620348172624700744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2620348172624700744==--
