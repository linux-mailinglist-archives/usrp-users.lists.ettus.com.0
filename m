Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BA5511CB6
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 19:53:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3D343845F1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 13:53:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651082038; bh=FaAG3kMir42npTPE46lXxgzYwV4mAKB37YG+bGDmGRA=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=rts5oW1ymkvTmmLf4NcNsuQzLD4J6RG5L6qR8Iw8sXeDVSCdllWru6eQ8+mcjxE5B
	 9n9C+p01dr1YwlxrPISWETouXI1oXbvYEtwMhkcgLXzMXHuo1bq3jbg88l53Uf/nWY
	 djZJNibKldIjGXDBJSfR1McdnctOwBskLNFi9BMuRq++GmOaZkXH4q/VOb8HBKXqbB
	 7DaUjpmGz7yuHgFPlFNUwkewsLeT+yw4hSMB1c9BczCDh1UWNTilHrB0PvQCf3V8Sv
	 U5aFBIYHlFyO0QjsNifILDGI+Qxg2bL+4Vt1GMgeSnoEiuYqMefWvmyDEqcb9WsvFG
	 pePbIA6TlvmvQ==
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 29D2338459F
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:52:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="BgvUS5SX";
	dkim-atps=neutral
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 23RHkSVG124233
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:52:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : content-type : mime-version; s=lanl;
 bh=z1w/WzoErj6AWvVcv4Hhl4jhpMV42Crep7wi4FF9ZEQ=;
 b=BgvUS5SXyhJSFdXc9/e9M0Q+CG3A0+0kASHgY4IZ+hOZ0DO4IavL/8cMQc3idZJf9od5
 BGgWVRgpXBkBMkYRG6oB7UXI0ovsAqfFsocZpmCgXQh+L7bCZ+2jvJ+QJxwhdERZCfEe
 tqcYvJ1ASi5trDoqjbUcgvUopH6uPbdNenbjpayNrgU16qNFySjwh33NNgSj9inG02R5
 sbY4Vxeg2wG2q3H10gXplQgsYpe+BMfC2s/ReRUGlnOGhYIV3AXDidu94yw9q4AQDL4S
 1URj3XRI7CvnIaPSY11tsqKMjKZ57u+SX+rPeu6ZPu6ilKg0exvvqBHNhelau7TBSVAk tQ==
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
	by proofpoint7.lanl.gov with ESMTP id 3fmfuc7eyx-1
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:52:45 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 5C681101FC25
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:52:45 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay1.lanl.gov
Received: from EXG16-P-MBX08.win.lanl.gov (exg16-p-mbx08.win.lanl.gov [128.165.106.188])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 48EE2101FC03
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:52:45 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX08.win.lanl.gov (128.165.106.188) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 27 Apr 2022 11:52:44 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee%7]) with mapi id
 15.01.2375.024; Wed, 27 Apr 2022 11:52:44 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: sychronous receiving from multiple e320's repeatedly results in
 ERROR_CODE_LATE_COMMAND
Thread-Index: AdhaX5iqzJ0cGBs6Qwus2l1y6hODfA==
Date: Wed, 27 Apr 2022 17:52:44 +0000
Message-ID: <a10bc1673342466f9c2a166280d57643@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: 84KNcZRTsaqmJFERJVycbONNKtrGc0eT
X-Proofpoint-ORIG-GUID: 84KNcZRTsaqmJFERJVycbONNKtrGc0eT
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-27_04:2022-04-27,2022-04-27 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: O2BEZGSVDNUJMJPBHT4LNY73EGULQN66
X-Message-ID-Hash: O2BEZGSVDNUJMJPBHT4LNY73EGULQN66
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O2BEZGSVDNUJMJPBHT4LNY73EGULQN66/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============7563939635978947261=="

--===============7563939635978947261==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a10bc1673342466f9c2a166280d57643lanlgov_"

--_000_a10bc1673342466f9c2a166280d57643lanlgov_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to use two e320's to collect data at the same time derived from=
 some examples. I would like to perform this repeatedly, however it only su=
cceeds on the  1st  attempt, subsequently I get mysterious 'LL..." and no d=
ata with an ERROR_CODE_LATE_COMMAND. The modified example is below the outp=
ut. Any suggestions are appreciated! -Mike

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.1.0.5-0-g6bd=
0be9c
[INFO] [MPMD] Initializing 2 device(s) in parallel with args: mgmt_addr0=3D=
192.168.50.201,type0=3De3xx,product0=3De320,serial0=3D31DFBB8,fpga0=3D1G,cl=
aimed0=3DFalse,mgmt_addr1=3D192.168.50.202,type1=3De3xx,product1=3De320,ser=
ial1=3D31DE2CC,fpga1=3D1G,claimed1=3DFalse,addr0=3D192.168.50.201,addr1=3D1=
92.168.50.202
[WARNING] [MPM.RPCServer] A timeout event occured!
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,mgmt_a=
ddr=3D192.168.50.201,product=3De320'.
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,mgmt_a=
ddr=3D192.168.50.202,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [1/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [1/Radio#0] CODEC loopback test passed
[INFO] [1/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [1/Radio#0] CODEC loopback test passed
[INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
[WARNING] [1/Radio#0] Attempting to set tick rate to 0. Skipping.
Has timespec: No        Time of first sample: 0
Fragmented: No  Fragmentation offset: 0
Start of burst: No      End of burst: No
Error Code: ERROR_CODE_TIMEOUT  Out of sequence: No
500000
Backend TkAgg is interactive backend. Turning interactive mode on.
LLHas timespec: No      Time of first sample: 0
Fragmented: No  Fragmentation offset: 0
Start of burst: No      End of burst: No
Error Code: ERROR_CODE_LATE_COMMAND     Out of sequence: No
0
Done!
---------------------------------------------------------------------- code
#!/usr/bin/env python3
#
# Copyright 2017-2018 Ettus Research, a National Instruments Company
#
# SPDX-License-Identifier: GPL-3.0-or-later
#
"""
RX samples to file using Python API
"""

import argparse
from xml.etree.ElementTree import tostring
import numpy as np
import uhd
import matplotlib.pyplot as plt
import time

#./rx_to_file.py -f 80.0e6 -o ./test1.dat -d 1.0 -r 1.0e6 -a addr=3D192.168=
.50.201
def parse_args():
    """Parse the command line arguments"""
    parser =3D argparse.ArgumentParser()
    parser.add_argument("-a", "--args", default=3D"addr=3D192.168.50.201", =
type=3Dstr)
    parser.add_argument("-o", "--output-file", default=3D"./test.bin",type=
=3Dstr, required=3DFalse)
    parser.add_argument("-f", "--freq", default=3D80e6, type=3Dfloat, requi=
red=3DFalse)
    parser.add_argument("-r", "--rate", default=3D5e5, type=3Dfloat)

    parser.add_argument("-d", "--duration", default=3D1.0, type=3Dfloat)
    parser.add_argument("-c", "--channels", default=3D0, nargs=3D"+", type=
=3Dint)
    parser.add_argument("-g", "--gain", type=3Dint, default=3D1) # range is=
 int supposedly 0 - 76db range,
    parser.add_argument("-n", "--numpy", default=3DFalse, action=3D"store_t=
rue",
                        help=3D"Save output file in NumPy format (default: =
No)")
    return parser.parse_args()

timeStep =3D 10.0
class multiRcvr:
    def __init__(self, addr, args) :
        self.usrp =3D uhd.usrp.MultiUSRP(addr)
        self.usrp.set_clock_source("gpsdo",0)
        self.usrp.set_time_source("gpsdo",0)
        self.usrp.set_clock_source("gpsdo",1)
        self.usrp.set_time_source("gpsdo",1)
        for mboard in range(2):
            t0 =3D time.time()
            while self.usrp.get_mboard_sensor("gps_locked",mboard).value =
=3D=3D 'false':
                time.sleep(1.0)
                if time.time() - t0 > 30.0:
                    print("COULD NOT GET GPS LOCK on " + str(mboard) + " **=
******************************")
                    break
        # https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD
        # https://files.ettus.com/manual/page_sync.html
        self.num_samps =3D int(np.ceil(args.duration*args.rate))
        if not isinstance(args.channels, list):
            args.channels =3D [args.channels]
        self.channels =3D [0, 1]
        # time_at_last_pps =3D usrp.get_time_last_pps().get_real_secs()
        # print(time_at_last_pps)
        # usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))
       # time.sleep(1)
        # To =3D usrp.get_time_now()
        # print( To.get_real_secs() )

        # https://files.ettus.com/manual/page_multiple.html#multiple_setup
        self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),0) # disabl=
e other channels on 1st usrp
        self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),1) # disabl=
e other channels on 2nd usrp

        # https://pysdr.org/content/usrp.html
        # second arg is channel (int); if not present channels defaults to =
0
        # gain can vary 0 - 76
        self.usrp.set_rx_rate(args.rate,0)
        self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq),0)
        self.usrp.set_rx_gain(10,0)
        self.usrp.set_rx_rate(args.rate,1)
        self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq), 1=
)
        self.usrp.set_rx_gain(args.gain, 1)

        # Set up the stream and receive buffer
        self.st_args =3D uhd.usrp.StreamArgs("fc32", "sc16")
        self.st_args.channels =3D self.channels
        self.metadata =3D uhd.types.RXMetadata()
        self.recv_buffer =3D np.zeros((len(self.channels), 1000), dtype=3Dn=
p.complex64)
        self.stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_mo=
re) #   num_done
        self.stream_cmd.num_samps =3D self.num_samps
        self.stream_cmd.stream_now =3D False
        self.stream_cmd.time_spec =3D uhd.libpyuhd.types.time_spec(timeStep=
) # set start time (try tweaking this)
        self.streamer =3D self.usrp.get_rx_stream(self.st_args)

    def printMultiUsrpInfo(self):
        print('rx channels in multi usrp : ' + str(self.usrp.get_rx_num_cha=
nnels()))
        for chan in self.channels:
            mboard =3D chan
            print('clock_source ' + str(mboard) + ' : ' + self.usrp.get_clo=
ck_source(mboard)) # really mboard
            print('time_source ' + str(mboard) + ' : ' + self.usrp.get_time=
_source(mboard)) # this isn't really channel , it is mboard
            print('rx_info ' + str(chan) + ' : ' + str(self.usrp.get_usrp_r=
x_info(chan)))
            rxfiltername =3D self.usrp.get_rx_filter_names(chan)
            print('rxfiltername ' + str(chan) + ' : '  + str(rxfiltername))=
 # why doesn't this work?
            #print(self.usrp.get_rx_filter(rxfiltername,chan))
            print('rx_gain_range ' + str(chan) + ' : ' + str(self.usrp.get_=
rx_gain_range(chan)))
            print('rx_gain ' + str(chan) + ' : ' + str(self.usrp.get_rx_gai=
n(chan)))
            print('rx_freq ' + str(chan) + ' : ' + str(self.usrp.get_rx_fre=
q(chan)))
            rx_sensors =3D self.usrp.get_rx_sensor_names(chan)
            for rx_sensor in rx_sensors:
                print("\t" + rx_sensor + " : " + self.usrp.get_rx_sensor(rx=
_sensor,mboard).value)
            mboard_sensors =3D self.usrp.get_mboard_sensor_names(mboard)
            for mboard_sensor in mboard_sensors:
                print("\t" + mboard_sensor + " : " + self.usrp.get_mboard_s=
ensor(mboard_sensor,mboard).value)


    def wait4pps(self):
        # Wait for 1 PPS to happen, then set the time at next PPS to 0.0
        time_at_last_pps =3D self.usrp.get_time_last_pps().get_real_secs()
        while time_at_last_pps =3D=3D self.usrp.get_time_last_pps().get_rea=
l_secs():
            time.sleep(0.05) # keep waiting till it happens- if this while =
loop never finishes then the PPS signal isn't there
        time.sleep(.01) # make sure all devices are into the next second
        self.usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0)) # de=
faults to all devices
        # Schedule Rx of num_samps samples exactly N seconds from last PPS
        self.streamer.issue_stream_cmd(self.stream_cmd)

    def capture(self):
        # Receive Samples.  recv() will return zeros, then our samples, the=
n more zeros, letting us know it's done
        waiting_to_start =3D True # keep track of where we are in the cycle=
 (see above comment)
        nsamps =3D 0
        i =3D 0
        # re-initialize samples every time so we don't see old data
        self.samples =3D np.zeros([len(self.channels),self.num_samps], dtyp=
e=3Dnp.complex64)

        #while nsamps !=3D 0 or waiting_to_start:
        t0 =3D time.time()
        metadataLast =3D uhd.types.RXMetadata()
        while i < self.num_samps:
            nsamps =3D self.streamer.recv(self.recv_buffer, self.metadata, =
timeout=3DtimeStep)
            if self.metadata !=3D metadataLast:
                print(self.metadata)
                metadataLast =3D self.metadata
            # if nsamps and waiting_to_start:
            #     waiting_to_start =3D False
            # elif nsamps:
            if nsamps:
                self.samples[:,i:i+nsamps] =3D self.recv_buffer[:,0:nsamps]
            i +=3D nsamps
            if time.time() - t0 > 16.0:
                break
        print(i)



def main():
    """RX samples and write to file"""
    args =3D parse_args()
    usrp =3D multiRcvr ("addr0=3D192.168.50.201,addr1=3D192.168.50.202",arg=
s)

    for _ in range(2):
        usrp.wait4pps()
        usrp.capture()

        timeIdx =3D np.arange(usrp.num_samps)/args.rate
        fig, ax =3D plt.subplots()
        l1 =3D ax.plot(usrp.samples[0,:].real,label=3D'201 R')
        l2 =3D ax.plot(usrp.samples[0,:].imag,label=3D'201 I')
        l3 =3D ax.plot(usrp.samples[1,:].real,label=3D'202 R')
        l4 =3D ax.plot(usrp.samples[1,:].imag,label=3D'202 I')
        ax.legend( loc=3D'upper right', shadow=3DTrue)
        ax.grid()
        plt.show(block=3DFalse)
        time.sleep(10.0)

    print('Done!')

    # with open(args.output_file, 'wb') as out_file:
    #     if args.numpy:
    #         np.save(out_file, samps, allow_pickle=3DFalse, fix_imports=3D=
False)
    #     else:
    #         samps.tofile(out_file)

if __name__ =3D=3D "__main__":
    main()

--_000_a10bc1673342466f9c2a166280d57643lanlgov_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to use two e320&#8217;s to collect data =
at the same time derived from some examples. I would like to perform this r=
epeatedly, however it only succeeds on the&nbsp; 1<sup>st</sup>&nbsp; attem=
pt, subsequently I get mysterious &#8216;LL&#8230;&#8221; and no data
 with an ERROR_CODE_LATE_COMMAND. The modified example is below the output.=
 Any suggestions are appreciated! -Mike<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.4.0; B=
oost_107100; UHD_4.1.0.5-0-g6bd0be9c<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD] Initializing 2 device(s) in parallel w=
ith args: mgmt_addr0=3D192.168.50.201,type0=3De3xx,product0=3De320,serial0=
=3D31DFBB8,fpga0=3D1G,claimed0=3DFalse,mgmt_addr1=3D192.168.50.202,type1=3D=
e3xx,product1=3De320,serial1=3D31DE2CC,fpga1=3D1G,claimed1=3DFalse,addr0=3D=
192.168.50.201,addr1=3D192.168.50.202<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [MPM.RPCServer] A timeout event occured!<o=
:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [MPM.RPCServer] A timeout event occured!<o=
:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3D1G,mgmt_addr=3D192.168.50.201,product=3De320'.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called with device=
 args `fpga=3D1G,mgmt_addr=3D192.168.50.202,product=3De320'.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 0 ...
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 1 ...
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum =
Throughput: 1361 MB/s)<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum =
Throughput: 1361 MB/s)<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [1/Radio#0] Performing CODEC loopback test on=
 channel 0 ...
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [1/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [1/Radio#0] Performing CODEC loopback test on=
 channel 1 ...
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [1/Radio#0] CODEC loopback test passed<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum =
Throughput: 1361 MB/s)<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum =
Throughput: 1361 MB/s)<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [0/Radio#0] Attempting to set tick rate to=
 0. Skipping.<o:p></o:p></p>
<p class=3D"MsoNormal">[WARNING] [1/Radio#0] Attempting to set tick rate to=
 0. Skipping.<o:p></o:p></p>
<p class=3D"MsoNormal">Has timespec: No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Time of first sample: 0<o:p></o:p></p>
<p class=3D"MsoNormal">Fragmented: No&nbsp; Fragmentation offset: 0<o:p></o=
:p></p>
<p class=3D"MsoNormal">Start of burst: No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End=
 of burst: No<o:p></o:p></p>
<p class=3D"MsoNormal">Error Code: ERROR_CODE_TIMEOUT&nbsp; Out of sequence=
: No<o:p></o:p></p>
<p class=3D"MsoNormal">500000<o:p></o:p></p>
<p class=3D"MsoNormal">Backend TkAgg is interactive backend. Turning intera=
ctive mode on.<o:p></o:p></p>
<p class=3D"MsoNormal">LLHas timespec: No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tim=
e of first sample: 0<o:p></o:p></p>
<p class=3D"MsoNormal">Fragmented: No&nbsp; Fragmentation offset: 0<o:p></o=
:p></p>
<p class=3D"MsoNormal">Start of burst: No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End=
 of burst: No<o:p></o:p></p>
<p class=3D"MsoNormal">Error Code: ERROR_CODE_LATE_COMMAND&nbsp;&nbsp;&nbsp=
;&nbsp; Out of sequence: No<o:p></o:p></p>
<p class=3D"MsoNormal">0<o:p></o:p></p>
<p class=3D"MsoNormal">Done!<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------------ code<o:p></o:p></p>
<p class=3D"MsoNormal">#!/usr/bin/env python3<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Copyright 2017-2018 Ettus Research, a National Ins=
truments Company<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># SPDX-License-Identifier: GPL-3.0-or-later<o:p></o:=
p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;&quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">RX samples to file using Python API<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;&quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">import argparse<o:p></o:p></p>
<p class=3D"MsoNormal">from xml.etree.ElementTree import tostring<o:p></o:p=
></p>
<p class=3D"MsoNormal">import numpy as np<o:p></o:p></p>
<p class=3D"MsoNormal">import uhd<o:p></o:p></p>
<p class=3D"MsoNormal">import matplotlib.pyplot as plt<o:p></o:p></p>
<p class=3D"MsoNormal">import time<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#./rx_to_file.py -f 80.0e6 -o ./test1.dat -d 1.0 -r =
1.0e6 -a addr=3D192.168.50.201<o:p></o:p></p>
<p class=3D"MsoNormal">def parse_args():<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;&quot;&quot;Parse the comma=
nd line arguments&quot;&quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser =3D argparse.ArgumentParse=
r()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-a&quot=
;, &quot;--args&quot;, default=3D&quot;addr=3D192.168.50.201&quot;, type=3D=
str)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-o&quot=
;, &quot;--output-file&quot;, default=3D&quot;./test.bin&quot;,type=3Dstr, =
required=3DFalse)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-f&quot=
;, &quot;--freq&quot;, default=3D80e6, type=3Dfloat, required=3DFalse)<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-r&quot=
;, &quot;--rate&quot;, default=3D5e5, type=3Dfloat)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;parser.add_argument(&quot;-d=
&quot;, &quot;--duration&quot;, default=3D1.0, type=3Dfloat)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-c&quot=
;, &quot;--channels&quot;, default=3D0, nargs=3D&quot;&#43;&quot;, type=3Di=
nt)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-g&quot=
;, &quot;--gain&quot;, type=3Dint, default=3D1) # range is int supposedly 0=
 - 76db range,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; parser.add_argument(&quot;-n&quot=
;, &quot;--numpy&quot;, default=3DFalse, action=3D&quot;store_true&quot;,<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; help=3D&quot;Save output file in NumPy format (default: No)&quo=
t;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; return parser.parse_args()<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">timeStep =3D 10.0<o:p></o:p></p>
<p class=3D"MsoNormal">class multiRcvr:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; def __init__(self, addr, args) :<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
 =3D uhd.usrp.MultiUSRP(addr)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_clock_source(&quot;gpsdo&quot;,0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_time_source(&quot;gpsdo&quot;,0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_clock_source(&quot;gpsdo&quot;,1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_time_source(&quot;gpsdo&quot;,1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for mboar=
d in range(2):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; t0 =3D time.time()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; while self.usrp.get_mboard_sensor(&quot;gps_locked&quot;,mbo=
ard).value =3D=3D 'false':<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; time.sleep(1.0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if time.time() - t0 &gt; 30.0:<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;=
COULD NOT GET GPS LOCK on &quot; &#43; str(mboard) &#43; &quot; ***********=
*********************&quot;)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # <a href=
=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD">
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD<=
/a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # <a href=
=3D"https://files.ettus.com/manual/page_sync.html">
https://files.ettus.com/manual/page_sync.html</a> <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self=
.num_samps =3D int(np.ceil(args.duration*args.rate))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not is=
instance(args.channels, list):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; args.channels =3D [args.channels]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.chan=
nels =3D [0, 1]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # time_at=
_last_pps =3D usrp.get_time_last_pps().get_real_secs()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # print(t=
ime_at_last_pps)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # usrp.se=
t_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# time.sle=
ep(1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # To =3D =
usrp.get_time_now()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # print( =
To.get_real_secs() )<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # <a href=
=3D"https://files.ettus.com/manual/page_multiple.html#multiple_setup">
https://files.ettus.com/manual/page_multiple.html#multiple_setup</a><o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_subdev_spec(uhd.usrp.SubdevSpec(&quot;A:0&quot;),0) # disable other=
 channels on 1st usrp<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_subdev_spec(uhd.usrp.SubdevSpec(&quot;A:0&quot;),1) # disable other=
 channels on 2nd usrp<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # <a href=
=3D"https://pysdr.org/content/usrp.html">https://pysdr.org/content/usrp.htm=
l</a><o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # second =
arg is channel (int); if not present channels defaults to 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # gain ca=
n vary 0 - 76<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_rate(args.rate,0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq),0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_gain(10,0)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_rate(args.rate,1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq), 1)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_rx_gain(args.gain, 1)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Set up =
the stream and receive buffer<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.st_a=
rgs =3D uhd.usrp.StreamArgs(&quot;fc32&quot;, &quot;sc16&quot;)<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.st_a=
rgs.channels =3D self.channels<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.meta=
data =3D uhd.types.RXMetadata()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.recv=
_buffer =3D np.zeros((len(self.channels), 1000), dtype=3Dnp.complex64)&nbsp=
;&nbsp;&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self=
.stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_more) #&nbsp;&=
nbsp; num_done<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stre=
am_cmd.num_samps =3D self.num_samps<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stre=
am_cmd.stream_now =3D False&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self=
.stream_cmd.time_spec =3D uhd.libpyuhd.types.time_spec(timeStep) # set star=
t time (try tweaking this)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stre=
amer =3D self.usrp.get_rx_stream(self.st_args)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; def printMultiUsrpInfo(self):<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print('rx=
 channels in multi usrp : ' &#43; str(self.usrp.get_rx_num_channels()))<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;for chan =
in self.channels:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; mboard =3D chan<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('clock_source ' &#43; str(mboard) &#43; ' : ' &#43; se=
lf.usrp.get_clock_source(mboard)) # really mboard<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('time_source ' &#43; str(mboard) &#43; ' : ' &#43; sel=
f.usrp.get_time_source(mboard)) # this isn't really channel , it is mboard<=
o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('rx_info ' &#43; str(chan) &#43; ' : ' &#43; str(self.=
usrp.get_usrp_rx_info(chan)))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; rxfiltername =3D self.usrp.get_rx_filter_names(chan)<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('rxfiltername ' &#43; str(chan) &#43; ' : '&nbsp; &#43=
; str(rxfiltername)) # why doesn't this work?<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; #print(self.usrp.get_rx_filter(rxfiltername,chan))<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('rx_gain_range ' &#43; str(chan) &#43; ' : ' &#43; str=
(self.usrp.get_rx_gain_range(chan)))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('rx_gain ' &#43; str(chan) &#43; ' : ' &#43; str(self.=
usrp.get_rx_gain(chan)))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; print('rx_freq ' &#43; str(chan) &#43; ' : ' &#43; str(self.=
usrp.get_rx_freq(chan)))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; rx_sensors =3D self.usrp.get_rx_sensor_names(chan)<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; for rx_sensor in rx_sensors:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;\t&quot; &#43; rx_sensor=
 &#43; &quot; : &quot; &#43; self.usrp.get_rx_sensor(rx_sensor,mboard).valu=
e)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; mboard_sensors =3D self.usrp.get_mboard_sensor_names(mboard)=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; for mboard_sensor in mboard_sensors:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;\t&quot; &#43; mboard_se=
nsor &#43; &quot; : &quot; &#43; self.usrp.get_mboard_sensor(mboard_sensor,=
mboard).value)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; def wait4pps(self):<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Wait fo=
r 1 PPS to happen, then set the time at next PPS to 0.0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; time_at_l=
ast_pps =3D self.usrp.get_time_last_pps().get_real_secs()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while tim=
e_at_last_pps =3D=3D self.usrp.get_time_last_pps().get_real_secs():<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; time.sleep(0.05) # keep waiting till it happens- if this whi=
le loop never finishes then the PPS signal isn't there<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; time.slee=
p(.01) # make sure all devices are into the next second<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.usrp=
.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0)) # defaults to all dev=
ices<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Schedul=
e Rx of num_samps samples exactly N seconds from last PPS<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.stre=
amer.issue_stream_cmd(self.stream_cmd)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; def capture(self):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Receive=
 Samples.&nbsp; recv() will return zeros, then our samples, then more zeros=
, letting us know it's done<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; waiting_t=
o_start =3D True # keep track of where we are in the cycle (see above comme=
nt)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nsamps =
=3D 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i =3D 0<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # re-init=
ialize samples every time so we don't see old data<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.samp=
les =3D np.zeros([len(self.channels),self.num_samps], dtype=3Dnp.complex64)=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #while ns=
amps !=3D 0 or waiting_to_start:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t0 =3D ti=
me.time()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; metadataL=
ast =3D uhd.types.RXMetadata()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while i &=
lt; self.num_samps:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; nsamps =3D self.streamer.recv(self.recv_buffer, self.metadat=
a, timeout=3DtimeStep)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; if self.metadata !=3D metadataLast:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(self.metadata)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; metadataLast =3D self.metadata<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; # if nsamps and waiting_to_start:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; waiting_to_start =3D False<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; # elif nsamps:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; if nsamps:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.samples[:,i:i&#43;nsamps] =3D s=
elf.recv_buffer[:,0:nsamps]<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; i &#43;=3D nsamps<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; if time.time() - t0 &gt; 16.0:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;prin=
t(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">def main():<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;&quot;&quot;RX samples and =
write to file&quot;&quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; args =3D parse_args()<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; usrp =3D multiRcvr (&quot;addr0=
=3D192.168.50.201,addr1=3D192.168.50.202&quot;,args)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; for _ in range(2):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp.wait=
4pps()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp.capt=
ure()<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; timeIdx =
=3D np.arange(usrp.num_samps)/args.rate<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fig, ax =
=3D plt.subplots()<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l1 =3D ax=
.plot(usrp.samples[0,:].real,label=3D'201 R')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l2 =3D ax=
.plot(usrp.samples[0,:].imag,label=3D'201 I')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l3 =3D ax=
.plot(usrp.samples[1,:].real,label=3D'202 R')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; l4 =3D ax=
.plot(usrp.samples[1,:].imag,label=3D'202 I')<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ax.legend=
( loc=3D'upper right', shadow=3DTrue)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ax.grid()=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plt.show(=
block=3DFalse)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; time.slee=
p(10.0)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; print('Done!')<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; # with open(args.output_file, 'wb=
') as out_file:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; if args=
.numpy:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; np.save(out_file, samps, allow_pickle=3DFalse, fix_imports=
=3DFalse)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp; else:<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; #&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; samps.tofile(out_file)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">if __name__ =3D=3D &quot;__main__&quot;:<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; main()<o:p></o:p></p>
</div>
</body>
</html>

--_000_a10bc1673342466f9c2a166280d57643lanlgov_--

--===============7563939635978947261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7563939635978947261==--
