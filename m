Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAED58DC44
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 19:50:30 +0200 (CEST)
Received: from [::1] (port=46938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxxPo-0002SL-GK; Wed, 14 Aug 2019 13:50:28 -0400
Received: from sonic305-2.consmr.mail.bf2.yahoo.com ([74.6.133.41]:36501)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <t_whit_87@yahoo.com>) id 1hxxPk-0002KZ-PE
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 13:50:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565804984; bh=pAh9ONo5oFIBw3Po1rcT/2e7GDYb9GRtKMdDep85HJ4=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=XkCV5XGCMgIkNp5y5kG6tp5693oKnZJ0WNqtF5zSsThM+vSQzsPeSOXaB4RzdNyK7gTJY3q/unbJFQUB2h9NZg8nuAk4vu4txjJYjk5W72rCAw8WjSsao3n9EWA9Llk7kuBW+qkqIrNbNTKsCy6KbVfRIvKq0fPLSy9QGvCCSarF5W5hYg7dtloiw8UE/wl0mjYiFa6WipKNCxvow9BqAU3g7VBXlaY4tLkMQ7/MnSF2q7Tw19ikpQ/ll7GsGopzZuSNHQJSKlRoElOJ/UHlGJ2lUpON8KcluM0zzLPCfQo3ZUYb/WcAFpbvV8NQtTGZ61d4zjRCYhRCRLUWpEid6w==
X-YMail-OSG: g40tpPYVM1l7XsOqabQgzcGzq1lSrLQrV.jUhba_6hUZ4T.0HIdAuPjptCqAtA7
 Ab_FNFSoE3nRcEMKjwUjbzzB0ixB9jTlds_dMMNNNHfDvHb_hQeqxznafj_FZd1Srl_dy1o5kA3r
 aKqNFgmZYGToc1J8BGjbX5qf3MewS9QEA9P5Ig9fvLWPOLGe2PqHUMy6kGns7oJaEvEB4sFfww.l
 eocvbAFBLAC9C8.AxFzeVdApMNdkx1Y2Xdrbs92zSw4XlXS18V0CGQ24jJ865gxYuIjFOaWyGXNd
 bFiuh001R4GiJrwQWBjIFKwpMUZ97bqDpKSlIoBRrcxkuK8JTWuztu71Cz.5z96ThPz2BK6RLRWc
 OiJYYgz0RNF24ADWD7UHZ5pC2WYe_7NyWO46E__L1.o1b8MecgXgX6yz8.Hr9MFQ95FOrAwNmSfU
 shZ.D3xOq_mZl9BiXm5CJz4WEjX7C0DTwYObnqmkyVMdtoSw5eIfijzFDgr38D6GAmFH6_NelqvI
 tyGeraTNAMCgF6Gynf5rWOZU_1OFnIK0SC8daekh7YAl0VE8QcrP.EAmuJxbcFpS4CaYBuu4OWwd
 Zgs8d7WfKy.UtVH59XyTLjnIGjRQ4WPXGQbbwt.BSrWe3FwPyMxithUC6YpYBHpDr1nLGFTbpBOi
 VTmugrZK3ZqOEU8fDFMjRWVdyNnvDyNRWGg8xPUen9Z2d4DItI_kw3eY_dk6feOOZnCvEnxeYCQr
 ZJ6Cf0gxTbnZKYE4OSY9hLDCF6gMduCzArGiv7E1eFqiiEg6scVbzbooLsWad14E7MemZYpYLZ29
 CP7e5ezXJYmr6J6WIT4TnaoQbwuM8gsXxUf2nHr4slLOcB.mQbJMFdTNihMtjz7o.niE1_nJuGu3
 GQtpGfkp_jNhjzcYiZHtQJndE4NiDpVPLCurZvZ647PrTR.XeD2tADEmZdM8YqHtjX3OsqNso4g_
 2j3I02yjH6JWdc5istER.gx6IUrqPvIzmVSpuhr1KD2hOpr1R5p9WRuMshdZP4zL.qbeANR1Tafr
 rf6VD.JKSnVFfXZzPJGqc6v8Z7Mnp1D6PC.wuEn5i194CFzpQVnUc.GZG_cpt3U7f5Kr_wJOAcIz
 fcigaiy5s4C.aScGnUg3QkLqMqjvDoLYxE8zD_GFJ9PdoqFTyuxR21vIhJAZ151iaHUeRc.AV3Vj
 VYFFh1DLHdmcJf0fNMsuXaJCGRrkB8Q7.uIVS1rObHP7IVgUdq9HxIQNjTtyd9FGkTqLMrS2r9E3
 dvA.hAZrD
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.bf2.yahoo.com with HTTP; Wed, 14 Aug 2019 17:49:44 +0000
Date: Wed, 14 Aug 2019 17:49:39 +0000 (UTC)
To: usrp-users@lists.ettus.com, "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <979073040.3843554.1565804979556@mail.yahoo.com>
In-Reply-To: <5D5414F4.6070501@gmail.com>
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com> <5D5382D4.60007@gmail.com>
 <451633320.3650050.1565757496009@mail.yahoo.com> <5D5414F4.6070501@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14097 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140
 Safari/537.36 Edge/18.17763
Subject: Re: [USRP-users] UHD Error with X310
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
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6399052192282756360=="
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

--===============6399052192282756360==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3843553_1935431117.1565804979555"
Content-Length: 6636

------=_Part_3843553_1935431117.1565804979555
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 MarcusI am running this in a Linux based VM running Ubuntu 16.04 LTS. The =
laptop I'm using is a Dell Precision 7730 with a Intel Xeon processor w/ cp=
u @ 2.90 GHz. It also has 64 GB or RAM. I'm using the 1 GbE on Ethernet por=
t 0 on the X310. I'm using a sample rate of 1 MHz and center freq of 2.45 G=
hz. Also, i'm using an older version of GNU Radio: 3.7.7
    On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus D. Leech <patchv=
onbraun@gmail.com> wrote: =20
=20
  On 08/14/2019 12:38 AM, Tellrell White wrote:
 =20
   Marcus=C2=A0=20
=20
 =20
   However, I re-flashed the device with "=C2=A0uhd_image_loader --args typ=
e=3Dx300" , power cycled and after running uhd_usrp_probe=C2=A0   get what'=
s shown below. This doesn't seem to be the new image. It's showing RFNoC bl=
ocks from a previous image that was installed prior to my use and when I tr=
y to run a flowgraph I'm getting the same error as mentioned in my previous=
 message. Ideas??=20
 These just look like the standard RFNOC blocks for X310.=C2=A0=C2=A0 Keep =
in mind that internally, for several releases, UHD uses RFNOC, even if your
 =C2=A0 code doesn't.
=20
 What type of hardware is this running on?=C2=A0 What kind of ethernet inte=
rface is connected to the X310?
=20
 What sample rate are you using?
=20
 What OS version?=C2=A0 Within a VM, or on raw hardware?
=20
=20
  =20
------=_Part_3843553_1935431117.1565804979555
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"></div><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        </div><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir="ltr" data-setdir="false">Marcus</div><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir="ltr" data-setdir="false">I am running this in a Linux based VM running Ubuntu 16.04 LTS. The laptop I'm using is a Dell Precision 7730 with a Intel Xeon processor w/ cpu @ 2.90 GHz. It also has 64 GB or RAM. I'm using the 1 GbE on Ethernet port 0 on the X310. I'm using a sample rate of 1 MHz and center freq of 2.45 Ghz. Also, i'm using an older version of GNU Radio: 3.7.7</div><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><br></div><div class="ydp77728d86yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">
        
        </div><div class="yahoo_quoted" id="yahoo_quoted_6414121447">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv5869272306"><div>
    <div class="yiv5869272306yqt7379963785" id="yiv5869272306yqtfd40325"><div class="yiv5869272306moz-cite-prefix">On 08/14/2019 12:38 AM, Tellrell White
      wrote:<br clear="none">
    </div>
    </div><blockquote type="cite"><div class="yiv5869272306yqt7379963785" id="yiv5869272306yqtfd68699">
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"> </div>
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir="ltr">Marcus&nbsp;</div>
      <br clear="none">
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><br clear="none">
      </div>
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><br clear="none">
      </div>
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir="ltr">
        <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="text-align:left;color:rgb(0, 0, 0);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal;orphans:2;" dir="ltr">However, I
          re-flashed the device with "&nbsp;<span><span style="background-color:rgb(255, 255, 255);color:rgb(29, 34, 40);display:inline;float:none;font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;font-style:normal;font-variant:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;">uhd_image_loader --args type=x300</span></span>" ,
          power cycled and after running uhd_usrp_probe&nbsp;</div>
      </div>
      <div class="yiv5869272306ydpfeed99a8yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;" dir="ltr"> get
        what's shown below. This doesn't seem to be the new image. It's
        showing RFNoC blocks from a previous image that was installed
        prior to my use and when I try to run a flowgraph I'm getting
        the same error as mentioned in my previous message. Ideas??</div></div>
    </blockquote>
    These just look like the standard RFNOC blocks for X310.&nbsp;&nbsp; Keep in
    mind that internally, for several releases, UHD uses RFNOC, even if
    your<br clear="none">
    &nbsp; code doesn't.<br clear="none">
    <br clear="none">
    What type of hardware is this running on?&nbsp; What kind of ethernet
    interface is connected to the X310?<br clear="none">
    <br clear="none">
    What sample rate are you using?<br clear="none">
    <br clear="none">
    What OS version?&nbsp; Within a VM, or on raw hardware?<div class="yiv5869272306yqt7379963785" id="yiv5869272306yqtfd27642"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_3843553_1935431117.1565804979555--


--===============6399052192282756360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6399052192282756360==--

