Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFE63E46FD
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:58:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E91738453A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 09:58:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ngcC2eNH";
	dkim-atps=neutral
Received: from sonic311-13.consmr.mail.bf2.yahoo.com (sonic311-13.consmr.mail.bf2.yahoo.com [74.6.131.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 6689E383E07
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 09:57:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628517456; bh=H/fV/VuZvOo70LiTmKKWsnmcnEj9JnwRGr8HzgLVvzA=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=ngcC2eNHaSDD8dKuYqy69dwLqyOcgMvkQAV7dRPz3Kv9TU3ctPDztsnzYvVNLj6pqhTpMQ7wNcfbZsdDnnkvgXqhuLhvQE0ZcsH/ppIXfjmI+gq1ZwJamVcpzPSJ6112nWW7wkj6EOTp1hPRV5OuDGRU2c5gr1pM/YGhyD7W3PJje3Sz6drSrt6ysFR8Ju89kS/FSOlOSIyuvsY55pB2ZnmzMYmP2urjvkLrt7IacCzIJ9gCgbasfOD+4XXBFy/mkx5YjiVGC8oYlJKUpkBdqoJ+1XyQLCbBF8oelmN5quwjgR2DNxghhCwrP0TpIodVOEk5xOBtoiinhWs0650K7A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1628517456; bh=grXpBndwbLlRTUQikjzWYtpS/X0mxJSjWEfkbt5hQOC=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=t1gvyjnJHX3o13w3FOhedoRUJYeZ9O/gbE+vwBhUVmg8kDL10E6nCcDTX6UHD4cmFNWpc9GTEDk/IjSUW7Shdbn2xvpDvwCqoLlZ/xjPpGp5plDcjVLopNjJDByDOvXNUsm4s09lmjEim9Fg8mjx2Ija0vZh7/dNmmyxzubFPAgZMx4mlRYIXUPMRqTePq7KXHX0oQcjmZwFCjbMFLpv0O716N6tYzrVoluliLJugZGgtsyo3cX2+4NFjGAbfuyWQO0Y8BQS/h7b9KL1lVs8gaGaQhpHKlg8Nt2AXBfJxyz9vwi8ofguzFsb3OKDH6NPZrfiV8bxaozw2MUe8dNp3w==
X-YMail-OSG: YQC9Yo4VM1lwYcR77KODGNuxq1Qamr_5d5FGKWLD2I8.6XK9Kene0caii4YIUCP
 QAsIRWEGCqBl.nSi3EsebKj4Uw_A2eTeWYIs0HZUtAykZa8lE8jXACegcGvhl6CKQcsSZ7VShSoE
 NkeglWjOGZQeKU02qZGzKiRP.d5mZMZ0M1oXzW0XMK0mFJbno2x9n3Crfm5BGJShg6jiZ6KZq9JK
 etjQ9P1Toq7kNVecZe1IVY98adEYDIWgS.EMLw.eRmyN5hvkasHVKNmmTLLT2rJgQ2m5BRYMI8r7
 hgEARQwspaivtP7OX1k7FfxIlz5DZHdz0r6kpg2akmOlsVLwYZeGqdfE7_bfkFEF7VFD428rkp7c
 Gks7J1A8fZkMCL1ABYlqh_k7JRM0Jdpa19iEFwxfh3VgqSnqo3dxjXckQDnSzrE5Nug_ipfDyjhd
 9LoOkh4O3in_5Rr2nGawg6JWf3dWdbbGmwCOLVRWdZT3qG1KpLbQ5e6q7hC_gYBz2SQA4e1fA3Bk
 rPjXXIgCYz5wv4f.suYL5jhfEeIHITQwEBxOgMLmeYTuWI7lCXENeV_v6ODPOfVFwTPTS2mycHia
 QQJFbotlQBS8iyA..N3TjNf_lbiW8aFJCuyGNQVlJexG16rgDKjdcBnGYWLPXXJ1NE.kv3UrzoAs
 YTjtPkzcgb_izFlOd6rrlA.z3eWXjEQ.dVJCAiTcIc3fZ2qnMAstkwRcQ2_qr35JaeCqYq7IS11X
 6RJytEoJosLV1dx4zOXoEPUaDrMohhAkY5o5I9X4LtVKmE3oJsffOwPX3TtHZmVxXTsahK7M9YXI
 BsrOtPZebL6oRTG7pMAIc9Nq1_ifK6lYwXuh9f_I28ihX9kmlHzLDfxLb2ibFTJkda8coKM9pTIY
 NhHsSNzGPBjpA0e7JSO6Jz6Mdp9_teeKlbaIoHNMLEGR.nEQvbffDvnB.pdDOtsD3R9IKetlhblX
 B5yqsOH13zaOh0ZqhESUdbyZX4R1IuOwB4iDpwCgBAGb5JiCTzv01zfSsqxgCGqqsuD0m.A22vz4
 88VVefa59Q_L40e13JMQ.pM.3aFrdEVf2xZZ1ZsSudStVgki5wRobuQhPWMu__SHzqo5i2z795m3
 EaKkYVC9Y3wY_QHf6Ors8HXShJ8uououkHPuI5ta1nb86YwooCTysISBvQAqB2hGMA4aZ5rahbVl
 XFtBluwDUSnbfvkIei5aCF0_EmVPPpqej7VTD1M4ZCiVZcMzAImV2iR1K2BMyNYFf8Em1qt2L6U7
 FQCEuCx2dLFp.zLtqifLKLb.U.lhIr_R.AEBB.PuDwg3XyU2g_0zrgJUdV0_qn5B8xO4s1eiieKZ
 B6B._jzhdwEDk8qzXl6PDV.Dlq2DNuXQ_obibefduNv2YJwFyd_8ibzciJveJM6x0qnC9YaGUiFf
 ZxQq8YBk0HiqvePRhv1Khj29umJciB..zysnTOVgAkNewHm0WeMyMKVtiM2HHM4IKoedVu5kpJwl
 vLkIVibvlXs72TpFha6hOcZ__Q7fHL93RZqaqacvM.9x0hhWhmNEYHoBEk1hO6geQUTA8e9iTftz
 c2rawCQFNYOI8525OoyXFDX1zRoPPcz9GJBLdat1WklajQpk4QfqXf7ljQW7gb3nMLY2Sc1pWF5b
 x.xVag3tGNnBsQY6kC6qqJ3qjSwMfq5LeiuVtJcqrWdPzQ4Lm4DKzgAelFaGH8HegGvDlpDY7Czx
 0CcqsGpYU9d_GhBSqOlOeeA.EVPInMNBJYV8wIRdlB69gFIPpE0WrxQ5W07gCK7rgPeIdZL67eYQ
 X.XcXO1k0cAhZZwAyAeFHQkBz_0hMJq1w8mJPE7N2iCfvWLq6q1TyWSpm9kmwIxVko9jhDEJOWQF
 .T6lw8mCj.BXCCTMVGkb0lBbfNTW1TiAY08pyeku_aUUEGNgUdEg._GjWoKXhNJqUHUPVBTBfR9P
 2CNWiutFlmN018.cj2aefMXtl.9DPIB5QsLG33BKgMFqtwQR_2j1ooTCjVMZYZ0LfEAMJvxYkeEv
 1S9_Zd.qGhsoI5jheLBDB7zARdGjov4eyxY0fF4Ch.__MD1av5NEo1.BMRmKfy92Q4kkqOI5FYjN
 NpB0jemEYJuQXaMmh1hH7oV9hJQKzu9QHb6OumiQZbq5xv_cZ1aMwgQIINhctsmwQt7gJhXWypIB
 rU5v49jZVzAR1cEgl4trGyYTF5bbwwDwXyWJD8TPyUlqfhuF1O7Cavs8iCM6zeUkDMY8CWXqNqsi
 vtGld_1t_noKf8gRWAns3ra9t76YBj5SNWV.HHmHfisvj.SaQsB.n9iEKNDUc9oYJvZ8v2XWmp5a
 O2lYic5No129z0.IL58uJ58P4geDKxPycbijornysMOET3JTflUHJ9jw32kvXQjvsR0tAlCaNY5t
 cbevbRaoOWI62SpOXdgv9emSshdo.U56c5gS3Vzc51X0MZ37Fdhktj_b31ecpSrzqb1AYRxue2bK
 k9vp1u7SuAVRrV.dUUzjY43uIs2jKhNjBTLCQEN8A0pLTcgsso.sswQnRfADdyLA45Jxd8XnKbqR
 3Y7MiovAeXoYk.dy8RwMbPXHe3dEZYF8ugC413TnJLcST0blDNi2v77DM7GYQAtAw6Au3
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Mon, 9 Aug 2021 13:57:36 +0000
Date: Mon, 9 Aug 2021 13:57:32 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <221044459.342469.1628517452268@mail.yahoo.com>
In-Reply-To: <61112AE8.4050100@gmail.com>
References: <1343769836.268037.1628477116595.ref@mail.yahoo.com> <1343769836.268037.1628477116595@mail.yahoo.com> <61112AE8.4050100@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18796 YMailNorrin
Message-ID-Hash: AQ2AWFAQZMJNNAEKNZXFEPR4SCGFSVSB
X-Message-ID-Hash: AQ2AWFAQZMJNNAEKNZXFEPR4SCGFSVSB
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Failure to create rfnoc_graph" error when updating FGPA on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AQ2AWFAQZMJNNAEKNZXFEPR4SCGFSVSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5998772547860621166=="

--===============5998772547860621166==
Content-Type: multipart/alternative;
	boundary="----=_Part_342468_223817844.1628517452266"

------=_Part_342468_223817844.1628517452266
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

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
 =20
------=_Part_342468_223817844.1628517452266
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp2559e301yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div><br></div><div dir="ltr" data-setdir="false">Marcus</div><div dir="ltr" data-setdir="false">No, I haven't. This is a new VM I created running Ubuntu 18.04. Checking to see if there's an active firewall results in the following: <br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><div>tw@tw-virtual-machine:~/uhd$ sudo ufw status<br>Status: inactive<br><br></div><div><br></div></div><div dir="ltr" data-setdir="false"><br></div>
        
        </div><div id="yahoo_quoted_9129661450" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Monday, August 9, 2021, 9:18:04 AM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv0700604899"><div>
    <div class="yiv0700604899yqt3811638609" id="yiv0700604899yqt03735"><div class="yiv0700604899moz-cite-prefix">On 08/08/2021 10:45 PM, Tellrell White
      via USRP-users wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      <div class="yiv0700604899yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
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
  </div></div><div class="yqt3811638609" id="yqt02357">_______________________________________________<br clear="none">USRP-users mailing list -- <a shape="rect" ymailto="mailto:usrp-users@lists.ettus.com" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br clear="none">To unsubscribe send an email to <a shape="rect" ymailto="mailto:usrp-users-leave@lists.ettus.com" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br clear="none"></div></div>
            </div>
        </div></body></html>
------=_Part_342468_223817844.1628517452266--

--===============5998772547860621166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5998772547860621166==--
