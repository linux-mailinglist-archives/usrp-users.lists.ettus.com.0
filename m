Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF0631A313
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 17:47:34 +0100 (CET)
Received: from [::1] (port=39972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAbbO-0000yY-UZ; Fri, 12 Feb 2021 11:47:30 -0500
Received: from sonic308-9.consmr.mail.ne1.yahoo.com ([66.163.187.32]:46627)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1lAbbJ-0000ku-Jy
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 11:47:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613148403; bh=mXPXkl2jDX/L+gUdMpNoqPY5zLzRFl8lxNE6ECpqF6Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=PLp9yHoGOAQFqaziJz47jBFs62Bdw60WjB18K1mLIMc1hRE7qOR3WEaAONlN8CLwrdk8b2F1Y3/fKYFBKCN/peBAvOS/mSHsK6YzHhdnOkBqMyZutLCTYbPmSdCSKVV2nD2PA+GomU8DhAK3bzYSDPHMk9S/iXhJxfZpo7iP7eL91cKDeySiEnpPMO5i07UoMdWh2g+ssFju1u+udPdJ3wxR8oZx3NspSmwg3NoYkUxkOHh3CghH9ZdX9oh/ZB49msIPcLHC4WC3UooM1FPGFB2Isqxr2c1Un/P1596aQpE+Uzr0eD7SVXJV9Se0rISqX7W5LJgSOizdsKVYGdLWng==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613148403; bh=zgHCrfAaXnU+8rxRTWt2UwXPQp5kHADQa+jCMM4lbLg=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=o3xd19rqyOryPO+Vj2s1VZ6E7fbT692q8zE2GBqL2GUuZsUv1qf38Dq+PVwOXjyZU7PXG2EuMeC/2v/lohTY9o+70rqA7VPgLob0yRpv4ZpT+++jUMklvuGXdoYb3DmdP7fH39uinx7bYrvk4rLdrC0waMpFLZ3jByC8+SN8bdz6QdFSGnMAHpU+1Fv5kGPBrk3R9UE5+mFbxzHhH6yLX8E7xXC6FEdzsm+bdExK8HxTw7lVLtZGsS8c2VyYt9Ptp2L1z2ePq+xBzOP+GH0/K996vE/Gq45lM3TicZh5+u9UzRcPu7T6SvaOfWKne4Zv4snWPNpesfOeU2Gqr7eGAw==
X-YMail-OSG: BVO2L9cVM1kTlQ_b.8NJvVhqVx5iFrk3LABSNlsuJqJPQO8cle4ppE.JPZMqeBT
 3l0P4jVeM.VPBs6Ma3K7_.Z7i37DY2dFz1m.ddVPbitUBbIZ13r4PgvPus7XTLZmdsMaMAgWV7M6
 cBruKQBWK0kLgoYopR8YTTNCSkCYD.nYgnLkQ172Y.INeNSZ.5jot0Al7ob6nfngkTDjdPkRc9xn
 NXlbI67bYJh1Ccgy7tSqKKAL1zOS6y35ZsA7rTAp9gTSVnttcpjxv7T.uQPDctlLKVVD964mN1Nq
 GPGhBwYGeSbQH3hv21kHstSDA4LmcEcV9YwSwslYkfMwhlcehzYPDor1N.g6bCDNej0Buy06FOXN
 w_o_cIEbsShslSawtWAsGmrLGOxkF7zlOl6I6G7ibtWJkCgsbn_32gz6FE8ucEeym7L0n6hELTH0
 25XW.QJKma0_vgdtgDeAnY_WF_mxU4wWrtPEWfy1g1klmNVLEcwyA5AU4B0mfkS7TQtjXHiA6Jt_
 rdveeIj_QR3Ugfxhv3PaZYB3YTVwQ7IPNxhpuOY_DFtCq7hPdE35Mk1I3jCP7ohPLZd75nCtlLVj
 6EV8U1BRiuvzAE6ebdfNNbW0zOMEULjSFA5eCBpgSvYiM1EaHhp_QqtL7QqCFFoeBMwnr_A0sXHs
 z4jrh4ZcbYSt.3DS4eUIX66y9tpuiYT_.IC581R9xfMYJ0LgP9Ym410CsmMnSPNCZRwj76YquZiB
 DqtftZxbsRdYmhLXsPss84NN8vlVeNsg0_CELlaDq1zlPYWOk9nqPRNTCW.zn7b15NJh9.yIp7aG
 g8Z1DgL6GX.Fu4KC.tGo3IjxQdA4qzjt4aySyvPFkwQMbQUf.G9bbm1outHBbRzYUPg8jGiXmRU2
 aEX5htrbdvJ_ihr4xUNInWZHh1QojXUzu.N6PEPLJ0MNHcany5NeyJppWX70eOiHL0C7x.fyLiEA
 VP_HVwYsbPnyDpuvV0KOWfzXdcVbAoLTRErgUCuNgMjAkyAtoPwpzvfoC_AoTE2F82OteDk_CJGv
 ulFSXjKuc7nI3WdqFQQ6FikvtadpJL7CwX3vs2Ueg2MROLbWen_fp6lT6TLNpPJcAHBceyicAK2a
 KuUKzc3YLYTXDCMBxg.lazfuu3B0irLgUuXacpPhu0X5PXmpMEftApOTgpwLZbfK7L2_25I.4hIR
 o0tCIPfrVYNxZFwrDlII5UQ7i3EuVBRxr01mhVNg9Py2TaORYpMSpEJjdpjXYetpfEnySLE3.llj
 1Ww2RgSgjrzgpI9q1RWEZKu4tF0a1ODaYKZaIxKnaewxTCVIcdTlfK5f6IwbD0B8udOe4zm.BTBe
 EibHSBuxe2wrYVKTsC90DWayn21kO7PGW8RN2pMI9e79EwV8La7.bRCA.9p5PstNccgCduoBTvG_
 DdjIOzKgM0rdoNbTB1Yf1mi3SJQnAwI8B5owBu8koE5TaYmqzLKZu_c0Eo82RQ0MkExaZVelZ5Ff
 bFObkmhK9Oh9NeRjsGIWeeG66EkmR8tcskJhdecG7x1Y.VVviehRLUcK0Uhyfc1neF5VeepNpXN1
 SsBdW6VE3jmBO.VudTIDWdNabXYKirErgaxCm2T9m__KXyd6LKPKi2QPvhZWfw6zMvmMuqpQvF6y
 7wL1oTBtOXzXR.fpc1BFCBzyJ.O7_s4ZazqljeRFEKtk3S0txrr5ABZNjsYfTMXycUFrYJxGPgDY
 kfdkfPYtNO6g62QTgFL6Guo_gJsuKlBDNyk_Df68zj3xj9nhsdRid5udY9pDVJI5FpZaqIxuGPMK
 LEFFG2qsQ3axVmk0WWrT7Fm5xYYYjFX1k1eVh0Bs3tZaZbHaoXD4mek0mOM0Zb8c5BX2J2dplO7q
 MDgVOm0RXg7MxHviTbzLP6vjUlhpvNZ2vDGpkfuxSEL2GESMkZPhUUvs9LjomJ5QdyxZ.4jd3dym
 gBfwd9Oa1yXwsUdyg_Xhs2SmFw0moJVwwx696Yiayp0nKY0lSc_lTnSuSpEvTlPJB0Az8NPpkrTa
 6Eu2TAMp79lgBdZL4K8y89Wp5oBAV4C4qsx3fo.WNHMzt2UwYHf12A8R8JYbXi_aGxiR1wftAo2E
 2yZ4XTnIktRox3oRyQk2WwZFLywYedwoDhNvnNE9QJipezztgM8LpXEKDZlbSA80iax80QG6GGhW
 _ouP6gc6mIq4g3ac_HJxcOLIUdjkeCL.maoUCIvq3E_FtSXxHuJ_4bnHPdPl0BuyFlDf7.QURnFY
 3LqYZtSkRKYuxAmXtBUvWrJnYqEtRLPVMlIsMNiUQMJV9koLp6dnpJKI6nmU_5EivTzF0LAizvNA
 VT4y0oeQrsyXsC0U3ki9IRwgzCAbST2Y5SWQtxNaHERzjN3RhSn60Gm1lqXF.OKmeECQ6spCkSU3
 3fkbtd2LykbG1efmKUPFCKjsLjwI.XD7n3SptDkDDRYgnVp7rqjsjyELDT1cLLL614JYRmYp0jQ3
 2pSJz6jvhk.z5gq4bCD9ZFs0MVvNLJCYfSyCWqN.WOQ0FSodOvmQWBqoHBR1hMbWV0i2vpgG8ojc
 Dz_Wlib1D4l7vE1sAyac3w2AOq26rmZNi5NvI
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 16:46:43 +0000
Received: by smtp401.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 7510f16d9ce4fb080c2316aa59c9bce8; 
 Fri, 12 Feb 2021 16:46:40 +0000 (UTC)
To: Mark D <md964@hmgcc.gov.uk>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <ac290695-1961-6291-50ea-76862addd90b@verizon.net>
 <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Message-ID: <9bc9093f-444f-453c-6fe0-5ccf05b570be@verizon.net>
Date: Fri, 12 Feb 2021 11:46:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] RFNoC OTT Block on E320
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============4050143946034420116=="
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

This is a multi-part message in MIME format.
--===============4050143946034420116==
Content-Type: multipart/alternative;
 boundary="------------2A88CF672510A3E9E1D3ED5C"
Content-Language: en-US
Content-Length: 19126

This is a multi-part message in MIME format.
--------------2A88CF672510A3E9E1D3ED5C
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Mark,

I'm not sure I understand what you mean by "embedded mode".� That may be 
a term used for other Ettus devices like X310 or N310.� Let me describe 
what I think the E3xx GNU Radio universe looks like.

In addition to the Ettus E310, I have a Lime Mini device that connects 
directly to the host computer via USB3.0.� Any GNU Radio program that I 
make (usually gnuradio-companion) runs directly on the host computer (my 
laptop with Ubuntu 18.04LTS) and directly processes the raw samples from 
the radio. Ettus X310 and N310 type devices would transfer raw samples 
from the radio via 10GigE type interfaces for similar processing on the 
host computer.� Note, no local software processing on the USRP device.� 
FPGA processing, yes; but software processing, no.

In contrast to that, the E310 has an embedded ARM processor that 
executes a python script (usually output from GRC).� Obviously, this 
needs to run in non-gui mode which is controlled by the "Options" block 
in your GRC flow graph (set to No GUI).� Similar to the host computer 
running with the Lime Mini (for example), the ARM processor can process 
the raw samples from the radio. However, since the ARM processor is 
relatively low powered it cannot process "raw" samples at a very high 
rate.� Therefore it requires the FPGA (RFNoC) to handle as much of the 
raw data processing as possible.� So, the host computer is used to 
generate the FPGA bit file (using Xilinx, Vivado) as well as any 
software modules (OOT) that need to be run on the ARM.� This is where 
the cross-compiling comes in.� The host computer has to compile the code 
that is going to eventually execute on the ARM.� After the 
cross-compilation is complete you need to move your newly compiled 
module over to the E3xx.� This is where I use sshfs so that I can "make 
install DESTDIR=..." into a location that is temporarily visible within 
the E3xx device.� Eventually you will copy this data to the flash card 
on your E3xx device so that your application can be available at any 
time (running totally disconnected from any host computer).

So, using the E3xx devices are a little more complex because you have to 
navigate the cross-compiling aspect and rely on the FPGA to handle the 
higher bandwidth data processing.� Thus the reason why I'm anxious to 
fix an issue with the ARM executing a GRC flow-graph that contains an 
OOT RFNoC module.� It's hard to make the E3xx do anything reasonable 
without the FPGA performing as much work as possible.

Anyway, hope that helped clear things up a little,

Mike

On 2/12/21 10:32 AM, Mark D wrote:
>
> Thanks Mike,
>
> I don�t have a much experience of Linux, I�ve just had to look up what 
> sshfs is, so as you can imagine this is becoming a very steep learning 
> curve for me.
>
> After reading your reply and doing a bit of research I�ve found AN-315 
> �Software Development on the E3xx USRP� which goes through the 
> cross-compiling process. Unfortunately it looks like this was written 
> for UHD 3.14.1. so there may be some differences for 4.0.
>
> I did initially think that as I wasn�t using the USRP in �embedded 
> mode� then the firmware on the unit wouldn�t need to be updated, and 
> the RFNoC would be more or less configured via the host computer. 
> Seems that this isn�t the case.
>
> Mark
>
> *From:*USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of 
> *Mike via USRP-users
> *Sent:* 12 February 2021 13:40
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] RFNoC OTT Block on E320
>
> Mark,
>
> For uhd_usrp_probe to correctly read your fpga block module you need 
> to update the XML file in your RFNOC-module/rfnoc/blocks directory.� 
> Then you need to cross-compile your module like you would with 
> gr-ettus and install it on the E320.� I use sshfs to cross-compile 
> on the host and make it immediately available on my E310.
>
> It may be that the process on UHD4 is slightly different but that is 
> what I do to make the correct name of my new block show up in 
> uhd_usrp_probe.
>
> I still have the python "attribute error" so hopefully now that two 
> people are seeing this on both UHD3.15 and UHD4.0 we can get to the 
> bottom of it.
>
> Mike
>
> On 2/12/21 6:52 AM, Mark D via USRP-users wrote:
>
>     Hi,
>
>     �
>
>     I�m trying to add an OTT block into the FPGA for an E320. I�m
>     using version 4.0.0 of the UHD.
>
>     �
>
>     So far I�ve used rfnocmodtool to create the OOT folder structure
>     and add my new block. My initial plan was to add this block as per
>     the default code generated that just passes data through. I wanted
>     see that this was instantiated into the FPGA and the system still
>     worked before starting to add my own code.
>
>     �
>
>     I�ve been following the �Getting Started with RFNoC in UHD
>     4.0� page on the Ettus website and also the Youtube video
>     �RFNoC 4 Workshop - GRCon 2020�. The .yml file I�ve created
>     connects the OTT block between the radio Rx and stream endpoint
>     (I�ve removed the DDC / DUC and already had the FPGA working
>     without these).
>
>     �
>
>     So far I�ve got the FPGA built and uploaded to the FPGA.
>     Uhd_usrp_probe shows that the RFNoC routing as expected, but the
>     name of OTT block has been replaced with Block#0. The OOT project
>     appears as a folder in GNU radio with the new block available to
>     be dragged into the project.
>
>     �
>
>     I think the issues I�m now having are similar to those reported
>     recently by Mike with the E310. Trying to run a GNU radio project
>     results in the error � AttributeError: module �Dilbert�
>     object has no attribute 'dogbert'�
>
>     �
>
>     The examples I�m following are all based around the X310, is
>     there an extra step required for the E3xx USRPs to update the
>     firmware running on the device so that it�s aware of the new
>     block type? If so I�ve no idea how I would go about this.
>
>     �
>
>     Any help on this would be much appreciated,
>
>     �
>
>     Mark
>
>     ------------------------------------------------------------------------
>
>     This email and any files transmitted with it are confidential and
>     intended solely for the use of the individual or entity to whom
>     they are addressed. If you have received this email in error
>     please notify the system manager.
>
>     _______________________________________________
>
>     USRP-users mailing list
>
>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------2A88CF672510A3E9E1D3ED5C
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Mark,</p>
    <p>I'm not sure I understand what you mean by "embedded mode".� That
      may be a term used for other Ettus devices like X310 or N310.� Let
      me describe what I think the E3xx GNU Radio universe looks like.</p>
    <p>In addition to the Ettus E310, I have a Lime Mini device that
      connects directly to the host computer via USB3.0.� Any GNU Radio
      program that I make (usually gnuradio-companion) runs directly on
      the host computer (my laptop with Ubuntu 18.04LTS) and directly
      processes the raw samples from the radio. Ettus X310 and N310 type
      devices would transfer raw samples from the radio via 10GigE type
      interfaces for similar processing on the host computer.� Note, no
      local software processing on the USRP device.� FPGA processing,
      yes; but software processing, no.<br>
    </p>
    <p>In contrast to that, the E310 has an embedded ARM processor that
      executes a python script (usually output from GRC).� Obviously,
      this needs to run in non-gui mode which is controlled by the
      "Options" block in your GRC flow graph (set to No GUI).� Similar
      to the host computer running with the Lime Mini (for example), the
      ARM processor can process the raw samples from the radio.�
      However, since the ARM processor is relatively low powered it
      cannot process "raw" samples at a very high rate.� Therefore it
      requires the FPGA (RFNoC) to handle as much of the raw data
      processing as possible.� So, the host computer is used to generate
      the FPGA bit file (using Xilinx, Vivado) as well as any software
      modules (OOT) that need to be run on the ARM.� This is where the
      cross-compiling comes in.� The host computer has to compile the
      code that is going to eventually execute on the ARM.� After the
      cross-compilation is complete you need to move your newly compiled
      module over to the E3xx.� This is where I use sshfs so that I can
      "make install DESTDIR=..." into a location that is temporarily
      visible within the E3xx device.� Eventually you will copy this
      data to the flash card on your E3xx device so that your
      application can be available at any time (running totally
      disconnected from any host computer).</p>
    <p>So, using the E3xx devices are a little more complex because you
      have to navigate the cross-compiling aspect and rely on the FPGA
      to handle the higher bandwidth data processing.� Thus the reason
      why I'm anxious to fix an issue with the ARM executing a GRC
      flow-graph that contains an OOT RFNoC module.� It's hard to make
      the E3xx do anything reasonable without the FPGA performing as
      much work as possible.</p>
    <p>Anyway, hope that helped clear things up a little,</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/12/21 10:32 AM, Mark D wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:LNXP123MB37249BEB2922B21E5A4D6A94CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-GB;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Thanks Mike,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I don�t have a much experience of Linux,
          I�ve just had to look up what sshfs is, so as you can imagine
          this is becoming a very steep learning curve for me.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">After reading your reply and doing a bit of
          research I�ve found AN-315 �Software Development on the E3xx
          USRP� which goes through the cross-compiling process.
          Unfortunately it looks like this was written for UHD 3.14.1.
          so there may be some differences for 4.0.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">I did initially think that as I wasn�t
          using the USRP in �embedded mode� then the firmware on the
          unit wouldn�t need to be updated, and the RFNoC would be more
          or less configured via the host computer. Seems that this
          isn�t the case.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p class="MsoNormal">Mark<o:p></o:p></p>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
                  style="mso-fareast-language:EN-GB" lang="EN-US">From:</span></b><span
                style="mso-fareast-language:EN-GB" lang="EN-US">
                USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a>
                <b>On Behalf Of </b>Mike via USRP-users<br>
                <b>Sent:</b> 12 February 2021 13:40<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] RFNoC OTT Block on E320<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>�</o:p></p>
        <p>Mark,<span style="mso-fareast-language:EN-GB"><o:p></o:p></span></p>
        <p>For uhd_usrp_probe to correctly read your fpga block module
          you need to update the XML file in your
          RFNOC-module/rfnoc/blocks directory.� Then you need to
          cross-compile your module like you would with gr-ettus and
          install it on the E320.� I use sshfs to cross-compile on the
          host and make it immediately available on my E310.<o:p></o:p></p>
        <p>It may be that the process on UHD4 is slightly different but
          that is what I do to make the correct name of my new block
          show up in uhd_usrp_probe.<o:p></o:p></p>
        <p>I still have the python "attribute error" so hopefully now
          that two people are seeing this on both UHD3.15 and UHD4.0 we
          can get to the bottom of it.<o:p></o:p></p>
        <p>Mike<o:p></o:p></p>
        <div>
          <p class="MsoNormal">On 2/12/21 6:52 AM, Mark D via USRP-users
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal">Hi,<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">I�m trying to add an OTT block into the
            FPGA for an E320. I�m using version 4.0.0 of the UHD.<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">So far I�ve used rfnocmodtool to create
            the OOT folder structure and add my new block. My initial
            plan was to add this block as per the default code generated
            that just passes data through. I wanted see that this was
            instantiated into the FPGA and the system still worked
            before starting to add my own code.<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">I�ve been following the �Getting
            Started with RFNoC in UHD 4.0� page on the Ettus website
            and also the Youtube video �RFNoC 4 Workshop - GRCon
            2020�. The .yml file I�ve created connects the OTT block
            between the radio Rx and stream endpoint (I�ve removed the
            DDC / DUC and already had the FPGA working without these).<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">So far I�ve got the FPGA built and
            uploaded to the FPGA. Uhd_usrp_probe shows that the RFNoC
            routing as expected, but the name of OTT block has been
            replaced with Block#0. The OOT project appears as a folder
            in GNU radio with the new block available to be dragged into
            the project.<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">I think the issues I�m now having are
            similar to those reported recently by Mike with the E310.
            Trying to run a GNU radio project results in the error �
            AttributeError: module �Dilbert� object has no attribute
            'dogbert'�<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">The examples I�m following are all
            based around the X310, is there an extra step required for
            the E3xx USRPs to update the firmware running on the device
            so that it�s aware of the new block type? If so I�ve no
            idea how I would go about this.<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">Any help on this would be much
            appreciated,<o:p></o:p></p>
          <p class="MsoNormal">�<o:p></o:p></p>
          <p class="MsoNormal">Mark<o:p></o:p></p>
          <div class="MsoNormal" style="text-align:center"
            align="center"><span style="mso-fareast-language:EN-GB">
              <hr width="100%" size="2" align="center">
            </span></div>
          <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">This
              email and any files transmitted with it are confidential
              and intended solely for the use of the individual or
              entity to whom they are addressed. If you have received
              this email in error please notify the system manager. <br>
              <br>
              <o:p></o:p></span></p>
          <pre>_______________________________________________<o:p></o:p></pre>
          <pre>USRP-users mailing list<o:p></o:p></pre>
          <pre><a href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
          <pre><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------2A88CF672510A3E9E1D3ED5C--


--===============4050143946034420116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4050143946034420116==--

