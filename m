Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E89E775460
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 09:46:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6A24380A34
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 03:46:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691567196; bh=qz2I2JF1iYZ8GvD0epsuaSsrKYYL3MlO5a9HQx0gPiY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DI9eM4lkcZqGAgtNvsAVOmxJD265gl7QG3rcyKkFJeGFmSsKvKJVmraJKkuPVM1JT
	 NOnAeSPh0AaxsTgBqIZzIwpIpyuOub+4ehba7e98I07OFRW3zDolbc2gzCdC8kdk60
	 4hYCM40Hzag88Yw1qIAdVUKb2tnL877rrfqO25tCf07vjxvgDVJ+8X7l0YLxr6sW8x
	 C+r5+YmaWmlOXNRSh6G6xv+F9oU6vSdPv3gmxBfi9TBELf5SYLs92Ouac1vhXasrUq
	 S/ylh7+b1T8Dy9L7UxelnIGuGkRSNRlXMkoU3QP7V8l7qiHBTdnifeoFvc6LH2Axl1
	 F3ZsmAulwm+fA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40873383FDA
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 03:46:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691567163; bh=NLBXLigE2oS7RV1s2LN0xm6NkhepqA8q3DwoxRdq3YM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Bj1ashosIMbG68KnOPPhdJKIGBJ4xlkys3t3ePo9gkSGtkVNeNCqTqC92/rm9K0+J
	 paqR98pUTLUoVGr5PlKwkRVxs34TWq2a4HSn0EKvbh83P9t1MILr8TeqiOLBLvSjf9
	 5bs68SZFobV0DECcVYVsHu3Juzs4uEaBZG9U3weEZC5402KMfkfnuE43No649hmzL2
	 ovR4V0NjIF/fUXSafKJrrISH0q1Kx1plNmIQDqYplO29/6bZYxoosyhtPCdO5nDm20
	 NBAn5wi+KnPmwVBEoE18XlPMuymnq0cSnRsSjcG5uzFuROHjL/82uwlEzLpFNXuuuw
	 oln0T+1keHLhQ==
Date: Wed, 9 Aug 2023 07:46:03 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a171d061-16c9-f4ee-d368-1c7821f48bdd@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CMG7EPJC35KY5JPATS5SDP4FTR4HLRCA
X-Message-ID-Hash: CMG7EPJC35KY5JPATS5SDP4FTR4HLRCA
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CMG7EPJC35KY5JPATS5SDP4FTR4HLRCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2173377153573095762=="

This is a multi-part message in MIME format.

--===============2173377153573095762==
Content-Type: multipart/alternative;
 boundary="b1_HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Good Morning! I hope you are doing well. I have `ls -l` =E2=80=98d the `i=
nstall_prefix/share/uhd/images/usrp_b210_fpga.rpt` file that you asked fo=
r. Here is the output for that file:

* -rw-r--r-- 1 root root 1518 May 26 15:57 usrp_b210_fpga.rpt

It is a total of 1.5K which is far less than 32KB meaning the b2xx_fx3_to=
ols could have been able to load the contents of the report as you coined=
 @Tue, Aug 8, 2023 2:34 PM. I also typed down the contents below so the v=
iewers can have a look.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Device utilization summary:
>
> \---------------------------
>
> Selected Device : 6slx150fgg484-3=20
>
> Slice Logic Utilization:=20
>
>  Number of Slice Registers:                 34280  out of  184304    18=
% =20
>
>  Number of Slice LUTs:                        37206  out of  92152    4=
0% =20
>
>     Number used as Logic:                    31106  out of  92152    33=
% =20
>
>     Number used as Memory:                6100  out of  21680    28% =20
>
>        Number used as RAM:                  1560
>
>        Number used as SRL:                   4540
>
> Slice Logic Distribution:=20
>
>  Number of LUT Flip Flop pairs used:  50601
>
>    Number with an unused Flip Flop:    16321  out of  50601    32% =20
>
>    Number with an unused LUT:           13395  out of  50601    26% =20
>
>    Number of fully used LUT-FF pairs:  20885  out of  50601    41% =20
>
>    Number of unique control sets:         805
>
> IO Utilization:=20
>
>  Number of IOs:                                   180
>
>  Number of bonded IOBs:                    163  out of    338    48% =20
>
>     IOB Flip Flops/Latches:                   156
>
> Specific Feature Utilization:
>
>  Number of Block RAM/FIFO:              190  out of    268    70% =20
>
>     Number using Block RAM only:       190
>
>  Number of BUFG/BUFGCTRLs:         4  out of     16    25% =20
>
>  Number of DSP48A1s:                       152  out of    180    84% =20
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Timing Summary:\\n
>
> All constraints were met.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I hope the report is readable at all.

By the way, you have mentioned about a modified version of UHD. I am gues=
sing it is not but is it publicly available by any chance or is it disclo=
sed to the end-users under some conditions maybe? Would it be possible fo=
r me to configure an EEPROM image myself for any version of the UHD given=
 I know the device=E2=80=99s serial no. part no. etc.?

If there is any alternative way to sending the device for a repair, I wou=
ld be happy to try it out. Looking forward for your response!

Best wishes,

Eden.

--b1_HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Good Morning! I hope you are doing well. I have <code>l=
s -l</code> =E2=80=98d the <code>install_prefix/share/uhd/images/usrp_b210_=
fpga.rpt</code> file that you asked for. Here is the output for that file:<=
/p><ul><li><p>-rw-r--r-- 1 root root 1518 May 26 15:57 usrp_b210_fpga.rpt</=
p></li></ul><p>It is a total of 1.5K which is far less than 32KB meaning th=
e b2xx_fx3_tools could have been able to load the contents of the report as=
 you coined @Tue, Aug 8, 2023 2:34 PM. I also typed down the contents below=
 so the viewers can have a look.</p><blockquote><p>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>Device utilization summary=
:</p><p>---------------------------</p><p>Selected Device : 6slx150fgg484-3=
 </p><p>Slice Logic Utilization: </p><p> Number of Slice Registers:        =
         34280  out of  184304    18%  </p><p> Number of Slice LUTs:       =
                 37206  out of  92152    40%  </p><p>    Number used as Log=
ic:                    31106  out of  92152    33%  </p><p>    Number used =
as Memory:                6100  out of  21680    28%  </p><p>       Number =
used as RAM:                  1560</p><p>       Number used as SRL:        =
           4540</p><p>Slice Logic Distribution: </p><p> Number of LUT Flip =
Flop pairs used:  50601</p><p>   Number with an unused Flip Flop:    16321 =
 out of  50601    32%  </p><p>   Number with an unused LUT:           13395=
  out of  50601    26%  </p><p>   Number of fully used LUT-FF pairs:  20885=
  out of  50601    41%  </p><p>   Number of unique control sets:         80=
5</p><p>IO Utilization: </p><p> Number of IOs:                             =
      180</p><p> Number of bonded IOBs:                    163  out of    3=
38    48%  </p><p>    IOB Flip Flops/Latches:                   156</p><p>S=
pecific Feature Utilization:</p><p> Number of Block RAM/FIFO:              =
190  out of    268    70%  </p><p>    Number using Block RAM only:       19=
0</p><p> Number of BUFG/BUFGCTRLs:         4  out of     16    25%  </p><p>=
 Number of DSP48A1s:                       152  out of    180    84%  </p><=
p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p=
>Timing Summary:\n</p><p>All constraints were met.</p><p>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p></blockquote><p>I hope =
the report is readable at all.</p><p>By the way, you have mentioned about a=
 modified version of UHD. I am guessing it is not but is it publicly availa=
ble by any chance or is it disclosed to the end-users under some conditions=
 maybe? Would it be possible for me to configure an EEPROM image myself for=
 any version of the UHD given I know the device=E2=80=99s serial no. part n=
o. etc.?</p><p>If there is any alternative way to sending the device for a =
repair, I would be happy to try it out. Looking forward for your response!<=
/p><p><br></p><p>Best wishes,</p><p>Eden.</p>

--b1_HthKsPfrgmITcV8UmOJMDGCm4EHU3yjmCGzPh435k0--

--===============2173377153573095762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2173377153573095762==--
