Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0320B89D9D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Aug 2019 14:08:43 +0200 (CEST)
Received: from [::1] (port=38596 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hx97w-0002vh-1N; Mon, 12 Aug 2019 08:08:40 -0400
Received: from mailout2.w2.samsung.com ([211.189.100.12]:39289)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <hao.chen1@samsung.com>)
 id 1hwwEr-0006RS-MX
 for usrp-users@lists.ettus.com; Sun, 11 Aug 2019 18:22:57 -0400
Received: from uscas1p1.samsung.com (unknown [182.198.245.206])
 by mailout2.w2.samsung.com (KnoxPortal) with ESMTP id
 20190811222216usoutp02575736bf2c9545761ae08437b7805b63~5-nfz22y92976729767usoutp02I;
 Sun, 11 Aug 2019 22:22:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w2.samsung.com
 20190811222216usoutp02575736bf2c9545761ae08437b7805b63~5-nfz22y92976729767usoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565562136;
 bh=6KDbY8wCypOv1W4lMrwS0jr5y9KdzBUKiSFj8iUWB4M=;
 h=From:To:CC:Subject:Date:References:From;
 b=ojzeglc01TLw22ePbsMuFKtdh6cWExa06tlW1/WvDGb0LeJ88J6+kMJzmLg4ymOC2
 lxnWN9fLH5O3sXcwBEHGPcPaa7CplrvFGFcbASqGrTZibK8bsycG67QBc6/KypRCSL
 MgCK3PtQsODRtgoQ//LCURUl7aas/JzRdVLU3rg8=
Received: from ussmges2new.samsung.com (u111.gpu85.samsung.co.kr
 [203.254.195.111]) by uscas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190811222215uscas1p233b66bdfed9fdfb15504127a96ecf751~5-nfD8xEQ0459404594uscas1p2B;
 Sun, 11 Aug 2019 22:22:15 +0000 (GMT)
Received: from uscas1p1.samsung.com ( [182.198.245.206]) by
 ussmges2new.samsung.com (USCPEMTA) with SMTP id C7.6C.04468.715905D5; Sun,
 11 Aug 2019 18:22:15 -0400 (EDT)
Received: from ussmgxs1new.samsung.com (u89.gpu85.samsung.co.kr
 [203.254.195.89]) by uscas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190811222215uscas1p26426760c3599cefee57df6d94140cfc6~5-nef3Ks_0265702657uscas1p2I;
 Sun, 11 Aug 2019 22:22:15 +0000 (GMT)
X-AuditID: cbfec36f-f57ff70000001174-3d-5d509517e2af
Received: from srafidmail02pr.sisa.samsung.com ( [105.144.21.51]) by
 ussmgxs1new.samsung.com (USCPEXMTA) with SMTP id D3.62.04507.615905D5; Sun,
 11 Aug 2019 18:22:15 -0400 (EDT)
Received: from sisasmtp.sisa.samsung.com (sraex02sc.sisa.samsung.com
 [105.160.16.23]) by srafidmail02pr.sisa.samsung.com (Postfix) with ESMTP id
 709703C0163; Sun, 11 Aug 2019 22:22:14 +0000 (UTC)
Received: from sraex01sc.sisa.samsung.com (2002:c0a9:fe01::c0a9:fe01) by
 sraex02sc.sisa.samsung.com (2002:c0a9:fe02::c0a9:fe02) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Sun, 11 Aug 2019 15:22:14 -0700
Received: from sraex01sc.sisa.samsung.com ([fe80::7016:3262:ddd3:a29b]) by
 sraex01sc.sisa.samsung.com ([fe80::7016:3262:ddd3:a29b%19]) with mapi id
 15.00.1367.000; Sun, 11 Aug 2019 15:22:14 -0700
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD/RFNoC  build FPGA failure /RFNoC multi-driven nets 
Thread-Index: AdVQkw3TD6XAFu7vTSShYzgsGU6DBw==
Date: Sun, 11 Aug 2019 22:22:14 +0000
Message-ID: <19489aa19d744bf59eb5bf709dd2d6d6@sraex01sc.sisa.samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [105.165.66.58]
MIME-Version: 1.0
X-Content-Scanned: Fidelis Mail
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7djXc7riUwNiDf5vVLHYOPECs8WFzjns
 DkweO2fdZfeYuPIQcwBTFJdNSmpOZllqkb5dAlfGzP7XzAXTLzBVnF40mbGBce0qpi5GTg4J
 AROJl78WAtlcHEICKxkl2mZ8Y4NwWpkkHn/aBVe16/tZVojEVkaJQ833WSCc44wSffMWQfVf
 YZTYeqqfES7z+8sHFpB+NgE1iXlfWhhBbBEBW4k/sxYyg9jMAtoSv09OBIsLCzhI/Gl8CVXj
 KvH94nR2CFtP4sTmm2A2i4CqxNr9H9lAbF4BT4kPyzeDzWEUEJP4fmoNE8RMcYlbT+ZD3S0o
 sWj2HmYIW0zi366HbBC2gcTWpftYIGxFiTMNq1ghevMleo5MZIGYLyhxcuYTqBp5iRert4N9
 KSHwnk1i+9ztUAtcJDb/vM4KYUtLXL0+FWgZB5BdLbF6mT5EfQejxMkT36DqrSVe37jHCLGM
 T+Lvr0eMExiVZyG5exaSO2YhuQMiriOxYPcntlnQsFu28DUzjH3mwGMmZPEFjOyrGMVLi4tz
 01OLjfJSy/WKE3OLS/PS9ZLzczcxAlPR6X+H83cwnl+SfIhRgINRiYf3BLN/rBBrYllxZe4h
 RgkOZiUR3iscvrFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeU/t7o4WEkhPLEnNTk0tSC2CyTJx
 cEo1MHLZdbqV7jSMEfbfNVPul0t45S57Jr7lnJcexhVaepXcWdRZHuqs5bz1w/fSXc78j95e
 ywzUO7vub/3G1rxvkvOnisQ5fV1m2dIu4Wfu33b68f2D087nL5PeWXHgyrydLQdDlZQ0Q5RZ
 Sn0tH36YJew+yUeb7/eXU8Vn3bwcTZJPXZ5icetPrBJLcUaioRZzUXEiAKtGjsBBAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMIsWRmVeSWpSXmKPExsWSOUHUWFd8akCswZ4nbBYbJ15gtrjQOYfd
 gclj56y77B4TVx5iDmCK4rJJSc3JLEst0rdL4MqY2f+auWD6BaaK04smMzYwrl3F1MXIySEh
 YCKx6/tZ1i5GLg4hgc2MEtN7zjFCOMcZJXauecQG4VxhlOhb95kZLrP861wWkH42ATWJeV9a
 GEFsEQFbiT+zFjKD2MwC2hK/T04EiwsLOEj8aXwJVeMq8f3idHYIW0/ixOabYDaLgKrE2v0f
 2UBsXgFPiQ/LN4PNYRQQk/h+ag0TxExxiVtP5kPdLSCxZM95ZghbVOLl43+sELaBxNal+1gg
 bEWJMw2rWCF68yV6jkxkgZgvKHFy5hOoGnmJF6u3M01gFJuFZMUsJC2zkLRAxHUkFuz+xDYL
 6s1lC18zw9hnDjxmQhZfwMi+ilG8tLg4N72i2DAvtVyvODG3uDQvXS85P3cTIzAqT/87HLmD
 8cTp5EOMAhyMSjy8J5j9Y4VYE8uKK3MPMUpwMCuJ8F7h8I0V4k1JrKxKLcqPLyrNSS0+xCjN
 waIkzrtcbEGUkEB6YklqdmpqQWoRTJaJg1OqgbF+6+n/xyZcMMxz92IpPmDAyGV/9RjHhJmN
 x3f4RT58xPjjzpV9rP2Ob8qFvHcd3rmuvrWmin3puYYOBgn/VXy386O1ZJgeadXxvrHr+OV7
 66x/4/kLe3esS0jQK19w8o/67JZdKrIXa/g3Z6Z5h0xPvXGaL2sR6+nYX7uiPy8+6ec1JcJc
 +YQSS3FGoqEWc1FxIgA74UslxgIAAA==
X-CMS-MailID: 20190811222215uscas1p26426760c3599cefee57df6d94140cfc6
CMS-TYPE: 301P
X-CMS-RootMailID: 20190811222215uscas1p26426760c3599cefee57df6d94140cfc6
References: <CGME20190811222215uscas1p26426760c3599cefee57df6d94140cfc6@uscas1p2.samsung.com>
X-Mailman-Approved-At: Mon, 12 Aug 2019 08:08:36 -0400
Subject: [USRP-users] UHD/RFNoC build FPGA failure /RFNoC multi-driven nets
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
From: Hao Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hao Chen <hao.chen1@samsung.com>
Content-Type: multipart/mixed; boundary="===============4793548852236107088=="
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

--===============4793548852236107088==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_19489aa19d744bf59eb5bf709dd2d6d6sraex01scsisasamsungcom_"

--_000_19489aa19d744bf59eb5bf709dd2d6d6sraex01scsisasamsungcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
      I download the latest version of UHD and follow the instruction of bu=
ilding RFNOC.  However, I met the attached errors. I noticed that Peter Hor=
vath has the same problem.
     Appreciate if anyone can help me.

Regards
Hao




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           211
Critical Warnings:  0
Errors:             0

BUILDER: Releasing IP location: /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/to=
p/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma
Using parser configuration from: /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/t=
op/x300/dev_config.json
[00:00:00] Executing command: vivado -mode batch -source /home/hao.chen1/rf=
noc/src/uhd-fpga/usrp3/top/x300/build_x300.tcl -log build.log -journa      =
                   l x300.jou
CRITICAL WARNING: [filemgmt 20-1440] File '/home/hao.chen1/rfnoc/src/uhd-fp=
ga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/use      =
                   r_design/rtl/clocking/mig_7series_v4_2_tempmon.v' alread=
y exists in the project as a part of sub-design file '/home/hao.chen1/rfnoc=
/src/uhd-fpga                         /usrp3/top/x300/build-ip/xc7k410tffg9=
00-2/ddr3_32bit/ddr3_32bit.xci'. Explicitly adding the file outside the sco=
pe of the sub-design can lead to                          unintended behavi=
ors and is not recommended.
[00:00:11] Current task: Initialization +++ Current Phase: Starting
[00:00:11] Current task: Initialization +++ Current Phase: Finished
[00:00:11] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2 -ve=
rilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=3D1 -verilog_define S  =
                       FP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog=
_define RFNOC=3D1 -verilog_define X310=3D1 -verilog_define GIT_HASH=3D32'hf=
b615a5a
[00:00:11] Starting Synthesis Command
[00:02:08] Current task: Synthesis +++ Current Phase: Starting
CRITICAL WARNING: [Constraints 18-1056] Clock 'FPGA_CLK' completely overrid=
es clock 'FPGA_CLK_p'.
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/timing.xdc:72]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ioport2_clk]'. [/home/hao.chen1/rfnoc/src/u      =
                   hd-fpga/usrp3/top/x300/timing.xdc:72]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ioport2_clk]'. [/home/hao.chen1/rfnoc/src/u      =
                   hd-fpga/usrp3/top/x300/timing.xdc:73]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks rio40_clk]'. [/home/hao.chen1/rfnoc/src/uhd      =
                   -fpga/usrp3/top/x300/timing.xdc:73]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/timing.xdc:74]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks radio_clk]'. [/home/hao.chen1/rfnoc/src/uhd      =
                   -fpga/usrp3/top/x300/timing.xdc:74]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk_div2]'. [/home/hao.chen1/rfnoc/src/      =
                   uhd-fpga/usrp3/top/x300/timing.xdc:75]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks radio_clk]'. [/home/hao.chen1/rfnoc/src/uhd      =
                   -fpga/usrp3/top/x300/timing.xdc:75]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ioport2_clk]'. [/home/hao.chen1/rfnoc/src/u      =
                   hd-fpga/usrp3/top/x300/timing.xdc:76]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks IoPort2Wrapperx/RxLowSpeedClk]'. [/home/hao      =
                   .chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:76]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/timing.xdc:77]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ce_clk]'. [/home/hao.chen1/rfnoc/src/uhd-fp      =
                   ga/usrp3/top/x300/timing.xdc:78]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/timing.xdc:78]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ce_clk]'. [/home/hao.chen1/rfnoc/src/uhd-fp      =
                   ga/usrp3/top/x300/timing.xdc:79]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks radio_clk]'. [/home/hao.chen1/rfnoc/src/uhd      =
                   -fpga/usrp3/top/x300/timing.xdc:79]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_10ge.xdc:13]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk_div2]'. [/home/hao.chen1/rfnoc/src/      =
                   uhd-fpga/usrp3/top/x300/x300_10ge.xdc:14]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks -filter {NAME =3D~ *sfpp_io_*/ten_gige_phy_i/    =
                     ten_gig_eth_pcs_pma_i/*/gtxe2_i/RXOUTCLK}]'. [/home/ha=
o.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/x300_10ge.xdc:15]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks -filter {NAME =3D~ *sfpp_io_*/ten_gige_phy_i/    =
                     ten_gig_eth_pcs_pma_i/*/gtxe2_i/TXOUTCLK}]'. [/home/ha=
o.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/x300_10ge.xdc:16]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_1ge.xdc:13]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_1ge.xdc:14]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_1ge.xdc:15]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_dram.xdc:8]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks mmcm_ps_clk_bufg_in]'. [/home/hao.chen1/rfn      =
                   oc/src/uhd-fpga/usrp3/top/x300/x300_dram.xdc:8]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_dram.xdc:9]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ddr3_axi_clk]'. [/home/hao.chen1/rfnoc/src/      =
                   uhd-fpga/usrp3/top/x300/x300_dram.xdc:9]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks bus_clk]'. [/home/hao.chen1/rfnoc/src/uhd-f      =
                   pga/usrp3/top/x300/x300_dram.xdc:10]
CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:No valid object(s) foun=
d for '-group [get_clocks ddr3_axi_clk_x2]'. [/home/hao.chen1/rfnoc/s      =
                   rc/uhd-fpga/usrp3/top/x300/x300_dram.xdc:10]
[00:04:01] Current task: Synthesis +++ Current Phase: Handling Custom Attri=
butes
[00:04:01] Current task: Synthesis +++ Current Phase: RTL Component Statist=
ics
[00:04:01] Current task: Synthesis +++ Current Phase: RTL Hierarchical Comp=
onent Statistics
[00:04:02] Current task: Synthesis +++ Current Phase: Part Resource Summary
[00:05:53] Current task: Synthesis +++ Current Phase: Cross Boundary and Ar=
ea Optimization
[00:05:59] Current task: Synthesis +++ Current Phase: Applying XDC Timing C=
onstraints
[00:06:34] Current task: Synthesis +++ Current Phase: Timing Optimization
[00:07:07] Current task: Synthesis +++ Current Phase: Technology Mapping
[00:07:07] Current task: Synthesis +++ Current Phase: IO Insertion
[00:07:10] Current task: Synthesis +++ Current Phase: Flattening Before IO =
Insertion
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_clk with 1st dr=
iver pin 'radio_clk_gen/CLK_OUT1' [/home/hao.chen1/rfnoc/src/uhd-fpga      =
                   /usrp3/top/x300/x300.v:381]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_clk with 2nd dr=
iver pin 'bus_clk_gen/CLK_OUT4' [/home/hao.chen1/rfnoc/src/uhd-fpga/u      =
                   srp3/top/x300/x300.v:284]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_rst with 1st dr=
iver pin 'radio_reset_sync/reset_double_sync/synchronizer_false_path/      =
                   stages[9].value_reg[9][0]/Q' [/home/hao.chen1/rfnoc/src/=
uhd-fpga/usrp3/lib/control/synchronizer_impl.v:33]
CRITICAL WARNING: [Synth 8-6859] multi-driven net on pin ce_rst with 2nd dr=
iver pin 'ce_reset_sync/reset_double_sync/synchronizer_false_path/sta      =
                   ges[9].value_reg[9][0]/Q' [/home/hao.chen1/rfnoc/src/uhd=
-fpga/usrp3/lib/control/synchronizer_impl.v:33]
[00:07:29] Current task: Synthesis +++ Current Phase: Final Netlist Cleanup
[00:07:42] Current task: Synthesis +++ Current Phase: Renaming Generated In=
stances
[00:07:53] Current task: Synthesis +++ Current Phase: Rebuilding User Hiera=
rchy
[00:07:56] Current task: Synthesis +++ Current Phase: Renaming Generated Po=
rts
[00:07:57] Current task: Synthesis +++ Current Phase: Handling Custom Attri=
butes
[00:07:57] Current task: Synthesis +++ Current Phase: Renaming Generated Ne=
ts
[00:07:59] Current task: Synthesis +++ Current Phase: Writing Synthesis Rep=
ort
[00:07:59] Current task: Synthesis +++ Current Phase: Finished
[00:07:59] Translating Synthesized Netlist
CRITICAL WARNING: [Designutils 20-1280] Could not find module 'axi_hb31'. T=
he XDC file /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build-i      =
                   p/xc7k410tffg900-2/axi_hb31/constraints/fir_compiler_v7_=
2.xdc will not be read for any cell of this module.
CRITICAL WARNING: [Designutils 20-1280] Could not find module 'axi_hb47'. T=
he XDC file /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build-i      =
                   p/xc7k410tffg900-2/axi_hb47/constraints/fir_compiler_v7_=
2.xdc will not be read for any cell of this module.
CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No valid object(s) found f=
or '-to [get_pins int_reset_sync/reset_int*/PRE]'. [/home/hao.chen1/r      =
                   fnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:591]
CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No valid object(s) found f=
or '-to [get_pins int_div2_reset_sync/reset_int*/PRE]'. [/home/hao.ch      =
                   en1/rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:592]
CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No valid object(s) found f=
or '-to [get_pins ce_reset_sync/reset_int*/PRE]'. [/home/hao.chen1/rf      =
                   noc/src/uhd-fpga/usrp3/top/x300/timing.xdc:593]
CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No valid object(s) found f=
or '-to [get_pins radio_reset_sync/reset_int*/PRE]'. [/home/hao.chen1      =
                   /rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:594]
[00:11:03] Current task: Translating Synthesized Netlist +++ Current Phase:=
 Starting
[00:11:03] Current task: Translating Synthesized Netlist +++ Current Phase:=
 Finished
[00:11:03] Executing Tcl: report_drc -ruledeck methodology_checks -file /ho=
me/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build-X310_RFNOC_HG/me      =
                   thodology.rpt
[00:11:03] Starting DRC Command
[00:12:21] Current task: DRC +++ Current Phase: Starting
[00:12:22] Current task: DRC +++ Current Phase: Finished
[00:12:22] Executing Tcl: opt_design -directive NoBramPowerOpt
[00:12:22] Starting Logic Optimization Command
[00:12:22] Current task: Logic Optimization +++ Current Phase: Starting
[00:12:22] Current task: Logic Optimization +++ Current Phase: Finished
[00:12:22] Starting DRC Task
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has=
 multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and bus_clk_gen/      =
                   inst/clkout4_buf/O.
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_reset_sync/reset_double=
_sync/synchronizer_false_path/value[9]_9 has multiple drivers: ce_res      =
                   et_sync/reset_double_sync/synchronizer_false_path/stages=
[9].value_reg[9][0]/Q, and radio_reset_sync/reset_double_sync/synchronizer_=
false_path/st                         ages[9].value_reg[9][0]/Q.
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
[00:12:26] Current task: DRC +++ Current Phase: Starting
[00:12:26] Current task: DRC +++ Current Phase: Finished
[00:12:26] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           1282
Critical Warnings:  40
Errors:             4

Makefile.x300.inc:106: recipe for target 'bin' failed
make[1]: *** [bin] Error 1
make[1]: Leaving directory '/home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x3=
00'
Makefile:112: recipe for target 'X310_RFNOC_HG' failed
make: *** [X310_RFNOC_HG] Error 2
xxxx@1500003049L:~/rfnoc/src/uhd-fpga/usrp3/tools/scripts$ ./uhd_image_buil=
der.py fft -d x310 -t X310_RFNOC_HG -m 6 --fill-with-fifos

--_000_19489aa19d744bf59eb5bf709dd2d6d6sraex01scsisasamsungcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I download the latest=
 version of UHD and follow the instruction of building RFNOC. &nbsp;However=
, I met the attached errors. I noticed that Peter Horvath has the same prob=
lem.
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Appreciate if anyone c=
an help me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Hao <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">Warnings:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 211<o:p></o:p></p>
<p class=3D"MsoNormal">Critical Warnings:&nbsp; 0<o:p></o:p></p>
<p class=3D"MsoNormal">Errors:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BUILDER: Releasing IP location: /home/hao.chen1/rfno=
c/src/uhd-fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_p=
ma<o:p></o:p></p>
<p class=3D"MsoNormal">Using parser configuration from: /home/hao.chen1/rfn=
oc/src/uhd-fpga/usrp3/top/x300/dev_config.json<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:00] Executing command: vivado -mode batch -so=
urce /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build_x300.tcl -log =
build.log -journa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;l x300.jou<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [filemgmt 20-1440] File '/home/hao=
.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32b=
it/ddr3_32bit/use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; r_design/rtl/clocking/mig_7series_v4_2_tempmon.v' already exist=
s in
 the project as a part of sub-design file '/home/hao.chen1/rfnoc/src/uhd-fp=
ga&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /us=
rp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'. Explicit=
ly adding the file outside the scope of the sub-design can lead to&nbsp;&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unintend=
ed
 behaviors and is not recommended.<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:11] Current task: Initialization &#43;&#43;&#=
43; Current Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:11] Current task: Initialization &#43;&#43;&#=
43; Current Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:11] Executing Tcl: synth_design -top x300 -pa=
rt xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=
=3D1 -verilog_define S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; FP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_defin=
e RFNOC=3D1 -verilog_define
 X310=3D1 -verilog_define GIT_HASH=3D32'hfb615a5a<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:11] Starting Synthesis Command<o:p></o:p></p>
<p class=3D"MsoNormal">[00:02:08] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Constraints 18-1056] Clock 'FPGA_=
CLK' completely overrides clock 'FPGA_CLK_p'.<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/timing.xdc:72]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ioport2_clk]'. [/home/hao.=
chen1/rfnoc/src/u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; hd-fpga/usrp3/top/x300/timing.xdc:72]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ioport2_clk]'. [/home/hao.=
chen1/rfnoc/src/u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; hd-fpga/usrp3/top/x300/timing.xdc:73]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks rio40_clk]'. [/home/hao.ch=
en1/rfnoc/src/uhd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -fpga/usrp3/top/x300/timing.xdc:73]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/timing.xdc:74]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks radio_clk]'. [/home/hao.ch=
en1/rfnoc/src/uhd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -fpga/usrp3/top/x300/timing.xdc:74]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk_div2]'. [/home/hao=
.chen1/rfnoc/src/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; uhd-fpga/usrp3/top/x300/timing.xdc:75]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks radio_clk]'. [/home/hao.ch=
en1/rfnoc/src/uhd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -fpga/usrp3/top/x300/timing.xdc:75]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ioport2_clk]'. [/home/hao.=
chen1/rfnoc/src/u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;hd-fpga/usrp3/top/x300/timing.xdc:76]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks IoPort2Wrapperx/RxLowSpeed=
Clk]'. [/home/hao&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; .chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:76]<o:p></o=
:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/timing.xdc:77]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ce_clk]'. [/home/hao.chen1=
/rfnoc/src/uhd-fp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ga/usrp3/top/x300/timing.xdc:78]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/timing.xdc:78]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ce_clk]'. [/home/hao.chen1=
/rfnoc/src/uhd-fp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;ga/usrp3/top/x300/timing.xdc:79]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks radio_clk]'. [/home/hao.ch=
en1/rfnoc/src/uhd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; -fpga/usrp3/top/x300/timing.xdc:79]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_10ge.xdc:13]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk_div2]'. [/home/hao=
.chen1/rfnoc/src/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; uhd-fpga/usrp3/top/x300/x300_10ge.xdc:14]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks -filter {NAME =3D~ *sfpp_i=
o_*/ten_gige_phy_i/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ten_gig_eth_pcs_pma_i/*/gtxe2_i/RXOUTCLK}]'. [/home/hao.chen1=
/rfnoc/src/uhd-fpga/usrp3/top/x300/x300_10ge.xdc:15]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks -filter {NAME =3D~ *sfpp_i=
o_*/ten_gige_phy_i/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ten_gig_eth_pcs_pma_i/*/gtxe2_i/TXOUTCLK}]'. [/home/hao.chen1=
/rfnoc/src/uhd-fpga/usrp3/top/x300/x300_10ge.xdc:16]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_1ge.xdc:13]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_1ge.xdc:14]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_1ge.xdc:15]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_dram.xdc:8]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks mmcm_ps_clk_bufg_in]'. [/h=
ome/hao.chen1/rfn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; oc/src/uhd-fpga/usrp3/top/x300/x300_dram.xdc:8]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_dram.xdc:9]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ddr3_axi_clk]'. [/home/hao=
.chen1/rfnoc/src/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; uhd-fpga/usrp3/top/x300/x300_dram.xdc:9]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks bus_clk]'. [/home/hao.chen=
1/rfnoc/src/uhd-f&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; pga/usrp3/top/x300/x300_dram.xdc:10]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_clock_groups:=
No valid object(s) found for '-group [get_clocks ddr3_axi_clk_x2]'. [/home/=
hao.chen1/rfnoc/s&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;rc/uhd-fpga/usrp3/top/x300/x300_dram.xdc:10]<o:p></o:p></p>
<p class=3D"MsoNormal">[00:04:01] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Handling Custom Attributes<o:p></o:p></p>
<p class=3D"MsoNormal">[00:04:01] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: RTL Component Statistics<o:p></o:p></p>
<p class=3D"MsoNormal">[00:04:01] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: RTL Hierarchical Component Statistics<o:p></o:p></p>
<p class=3D"MsoNormal">[00:04:02] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Part Resource Summary<o:p></o:p></p>
<p class=3D"MsoNormal">[00:05:53] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Cross Boundary and Area Optimization<o:p></o:p></p>
<p class=3D"MsoNormal">[00:05:59] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Applying XDC Timing Constraints<o:p></o:p></p>
<p class=3D"MsoNormal">[00:06:34] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Timing Optimization<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:07] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Technology Mapping<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:07] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: IO Insertion<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:10] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Flattening Before IO Insertion<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Synth 8-6859] multi-driven net on=
 pin ce_clk with 1st driver pin 'radio_clk_gen/CLK_OUT1' [/home/hao.chen1/r=
fnoc/src/uhd-fpga&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;/usrp3/top/x300/x300.v:381]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Synth 8-6859] multi-driven net on=
 pin ce_clk with 2nd driver pin 'bus_clk_gen/CLK_OUT4' [/home/hao.chen1/rfn=
oc/src/uhd-fpga/u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; srp3/top/x300/x300.v:284]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Synth 8-6859] multi-driven net on=
 pin ce_rst with 1st driver pin 'radio_reset_sync/reset_double_sync/synchro=
nizer_false_path/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; stages[9].value_reg[9][0]/Q' [/home/hao.chen1/rfnoc/src/uhd-fpg=
a/usrp3/lib/control/synchronizer_impl.v:33]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Synth 8-6859] multi-driven net on=
 pin ce_rst with 2nd driver pin 'ce_reset_sync/reset_double_sync/synchroniz=
er_false_path/sta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ges[9].value_reg[9][0]/Q' [/home/hao.chen1/rfnoc/src/uhd-fpga/u=
srp3/lib/control/synchronizer_impl.v:33]<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:29] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Final Netlist Cleanup<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:42] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Renaming Generated Instances<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:53] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Rebuilding User Hierarchy<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:56] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Renaming Generated Ports<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:57] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Handling Custom Attributes<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:57] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Renaming Generated Nets<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:59] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Writing Synthesis Report<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:59] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:07:59] Translating Synthesized Netlist<o:p></o:p=
></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Designutils 20-1280] Could not fi=
nd module 'axi_hb31'. The XDC file /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3=
/top/x300/build-i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; p/xc7k410tffg900-2/axi_hb31/constraints/fir_compiler_v7_2.xdc w=
ill
 not be read for any cell of this module.<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Designutils 20-1280] Could not fi=
nd module 'axi_hb47'. The XDC file /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3=
/top/x300/build-i&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; p/xc7k410tffg900-2/axi_hb47/constraints/fir_compiler_v7_2.xdc w=
ill
 not be read for any cell of this module.<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No =
valid object(s) found for '-to [get_pins int_reset_sync/reset_int*/PRE]'. [=
/home/hao.chen1/r&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; fnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:591]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No =
valid object(s) found for '-to [get_pins int_div2_reset_sync/reset_int*/PRE=
]'. [/home/hao.ch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; en1/rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:592]<o:p></o:p=
></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No =
valid object(s) found for '-to [get_pins ce_reset_sync/reset_int*/PRE]'. [/=
home/hao.chen1/rf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; noc/src/uhd-fpga/usrp3/top/x300/timing.xdc:593]<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [Vivado 12-4739] set_max_delay:No =
valid object(s) found for '-to [get_pins radio_reset_sync/reset_int*/PRE]'.=
 [/home/hao.chen1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; /rfnoc/src/uhd-fpga/usrp3/top/x300/timing.xdc:594]<o:p></o:p></=
p>
<p class=3D"MsoNormal">[00:11:03] Current task: Translating Synthesized Net=
list &#43;&#43;&#43; Current Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:11:03] Current task: Translating Synthesized Net=
list &#43;&#43;&#43; Current Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:11:03] Executing Tcl: report_drc -ruledeck metho=
dology_checks -file /home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300/build=
-X310_RFNOC_HG/me&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; thodology.rpt<o:p></o:p></p>
<p class=3D"MsoNormal">[00:11:03] Starting DRC Command<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:21] Current task: DRC &#43;&#43;&#43; Current=
 Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:22] Current task: DRC &#43;&#43;&#43; Current=
 Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:22] Executing Tcl: opt_design -directive NoBr=
amPowerOpt<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:22] Starting Logic Optimization Command<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[00:12:22] Current task: Logic Optimization &#43;&#4=
3;&#43; Current Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:22] Current task: Logic Optimization &#43;&#4=
3;&#43; Current Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:12:22] Starting DRC Task<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: [DRC MDRV-1] Multip=
le Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has multiple drivers: radio_c=
lk_gen/inst/clkout1_buf/O, and bus_clk_gen/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inst/clkout4_buf/O.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: [DRC MDRV-1] Multip=
le Driver Nets: Net radio_reset_sync/reset_double_sync/synchronizer_false_p=
ath/value[9]_9 has multiple drivers: ce_res&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; et_sync/reset_double_sync/synchronize=
r_false_path/stages[9].value_reg[9][0]/Q,
 and radio_reset_sync/reset_double_sync/synchronizer_false_path/st&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ages[9].value_=
reg[9][0]/Q.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: [Vivado_Tcl 4-78] E=
rror(s) found during DRC. Opt_design not run.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: [Common 17-39] 'opt=
_design' failed due to earlier errors.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">[00:12:26] Current task: D=
RC &#43;&#43;&#43; Current Phase: Starting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">[00:12:26] Current task: D=
RC &#43;&#43;&#43; Current Phase: Finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">[00:12:26] Process termina=
ted. Status: Failure<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:red">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Warnings:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1282<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Critical Warnings:&nbsp; 4=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Errors:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:red"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:red">Makefile.x300.inc:106: rec=
ipe for target 'bin' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">make[1]: *** [bin] Error 1=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">make[1]: Leaving directory=
 '/home/hao.chen1/rfnoc/src/uhd-fpga/usrp3/top/x300'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Makefile:112: recipe for t=
arget 'X310_RFNOC_HG' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">make: *** [X310_RFNOC_HG] =
Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal">xxxx@1500003049L:~/rfnoc/src/uhd-fpga/usrp3/tools/sc=
ripts$ ./uhd_image_builder.py fft -d x310 -t X310_RFNOC_HG -m 6 --fill-with=
-fifos<o:p></o:p></p>
</div>
</body>
</html>

--_000_19489aa19d744bf59eb5bf709dd2d6d6sraex01scsisasamsungcom_--


--===============4793548852236107088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4793548852236107088==--

