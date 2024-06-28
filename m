Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C69591B58F
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 05:47:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 260F63858DA
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 23:47:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719546422; bh=FvLKAWBWG9CBo6CbTixjHX8bXZHUqYxFuqtzdeALiGA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=INksJHSU1VUsC6fm40XvqjebnXvqarzjHdOpukTBGpkrTJT2dEwdq6rU14JN5iVgu
	 dsegDAviVQbCMOLnq6lvxR6rBjk7RBxoRS5sZioc3XvSEDEWX1i4hOoc3VZqlxgug9
	 JskMXGO6Ic5BuMeJEY5B1zMiDD1sXpmtvt1P/Iw1YtymT38MqFz2EvJFbaHeayERHb
	 bO+VYXDvHTP8T6sZ4zwyWQy60L57QxmMYdkL8oT8hcwx89F3zzA9OLN/2qpE9G/0TY
	 vPrwfdVV4vEQAzy5NAQ6UyrVwCAXd8/TGf4ZB3hyxqQQVk2/Kui1yVzubaUBovRyyt
	 jib5xuiNQ1BNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93221385513
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 23:46:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719546381; bh=tvzZRtjtU5RwZ2foNZ9jz1a0tXM9XNmR0BXsqOk4rJE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZNuiLbBucD2Qdd+dk9UCLpghQqqnGdQHT3rgVV3KAkSJjZLV/99XUep0/6RVNf2fx
	 uR6uy6TfrhHVqfcKLAoN6JmQa5zjThmzD9f7gktUUWO2MTza4BkW5fjNDlf4CQz5BD
	 61zuFioDJl0IRHzkGzcqjTz05OUJWiTJbPmgr/kTN9C3qKAxuQNUVOZ1xDfoCK5RJI
	 MXdRMAAdkL+PQ5BrZ0RFmSEjA15aNacFDjU+OjKiRzIktP7aVIGiCirlgT2j64LfKs
	 tL64fecK5SDcNJ1/eweLmNVGgOk0Vbge2CT9ZMG6wOsUdMa14qSyv4YJi99dOrUaUI
	 zUvQ3mPKak97Q==
Date: Fri, 28 Jun 2024 03:46:21 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7c8d266a-fc9e-489d-a93b-5661d7b24324@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2GMAYX3NGA4VP6U6BPI2VIJTA3UVQPSC
X-Message-ID-Hash: 2GMAYX3NGA4VP6U6BPI2VIJTA3UVQPSC
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GMAYX3NGA4VP6U6BPI2VIJTA3UVQPSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6199523033885926033=="

This is a multi-part message in MIME format.

--===============6199523033885926033==
Content-Type: multipart/alternative;
 boundary="b1_BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good catch!!!

I updated it now, but still have the same result=E2=80=A6printing S=E2=80=
=99s when directly connected to the powerful server.

I repeated the test on the USRP PC (2974) with the same results, printed =
U=E2=80=99s.

For the server, I cleared the NIC stats, then ran the program for a few s=
econds.  Here is the resulting statistics for the NIC, and I don=E2=80=99=
t see anything abnormal.  It=E2=80=99s my understanding that for intel NI=
CS, fdir_miss is normal.

Do you see anything abnormal?  Any chance someone else could try this .cp=
p file?  I appreciate the help=E2=80=A6. I not sure what to try next.

```

sudo ethtool -S eno2
NIC statistics:
     rx_packets: 146651
     tx_packets: 1065751
     rx_bytes: 12030774
     tx_bytes: 8403361197
     rx_pkts_nic: 146651
     tx_pkts_nic: 1065750
     rx_bytes_nic: 12617378
     tx_bytes_nic: 8407627498
     lsc_int: 2
     tx_busy: 0
     non_eop_descs: 20
     rx_errors: 0
     tx_errors: 0
     rx_dropped: 0
     tx_dropped: 0
     multicast: 0
     broadcast: 4
     rx_no_buffer_count: 0
     collisions: 0
     rx_over_errors: 0
     rx_crc_errors: 0
     rx_frame_errors: 0
     hw_rsc_aggregated: 0
     hw_rsc_flushed: 0
     fdir_match: 0
     fdir_miss: 146646
     fdir_overflow: 0
     rx_fifo_errors: 0
     rx_missed_errors: 0
     tx_aborted_errors: 0
     tx_carrier_errors: 0
     tx_fifo_errors: 0
     tx_heartbeat_errors: 0
     tx_timeout_count: 0
     tx_restart_queue: 0
     rx_length_errors: 0
     rx_long_length_errors: 0
     rx_short_length_errors: 0
     tx_flow_control_xon: 0
     rx_flow_control_xon: 0
     tx_flow_control_xoff: 0
     rx_flow_control_xoff: 0
     rx_csum_offload_errors: 0
     alloc_rx_page: 326466
     alloc_rx_page_failed: 0
     alloc_rx_buff_failed: 0
     rx_no_dma_resources: 0
     os2bmc_rx_by_bmc: 0
     os2bmc_tx_by_bmc: 0
     os2bmc_tx_by_host: 0
     os2bmc_rx_by_host: 0
     tx_hwtstamp_timeouts: 0
     tx_hwtstamp_skipped: 0
     rx_hwtstamp_cleared: 0
     tx_ipsec: 0
     rx_ipsec: 0
     fcoe_bad_fccrc: 0
     rx_fcoe_dropped: 0
     rx_fcoe_packets: 0
     rx_fcoe_dwords: 0
     fcoe_noddp: 0
     fcoe_noddp_ext_buff: 0
     tx_fcoe_packets: 0
     tx_fcoe_dwords: 0
     tx_queue_0_packets: 0
     tx_queue_0_bytes: 0
     tx_queue_1_packets: 0
     tx_queue_1_bytes: 0
     tx_queue_2_packets: 45
     tx_queue_2_bytes: 6177
     tx_queue_3_packets: 0
     tx_queue_3_bytes: 0
     tx_queue_4_packets: 0
     tx_queue_4_bytes: 0
     tx_queue_5_packets: 0
     tx_queue_5_bytes: 0
     tx_queue_6_packets: 0
     tx_queue_6_bytes: 0
     tx_queue_7_packets: 0
     tx_queue_7_bytes: 0
     tx_queue_8_packets: 0
     tx_queue_8_bytes: 0
     tx_queue_9_packets: 0
     tx_queue_9_bytes: 0
     tx_queue_10_packets: 6
     tx_queue_10_bytes: 500
     tx_queue_11_packets: 8
     tx_queue_11_bytes: 676
     tx_queue_12_packets: 0
     tx_queue_12_bytes: 0
     tx_queue_13_packets: 0
     tx_queue_13_bytes: 0
     tx_queue_14_packets: 0
     tx_queue_14_bytes: 0
     tx_queue_15_packets: 0
     tx_queue_15_bytes: 0
     tx_queue_16_packets: 0
     tx_queue_16_bytes: 0
     tx_queue_17_packets: 0
     tx_queue_17_bytes: 0
     tx_queue_18_packets: 0
     tx_queue_18_bytes: 0
     tx_queue_19_packets: 0
     tx_queue_19_bytes: 0
     tx_queue_20_packets: 0
     tx_queue_20_bytes: 0
     tx_queue_21_packets: 0
     tx_queue_21_bytes: 0
     tx_queue_22_packets: 0
     tx_queue_22_bytes: 0
     tx_queue_23_packets: 0
     tx_queue_23_bytes: 0
     tx_queue_24_packets: 1
     tx_queue_24_bytes: 58
     tx_queue_25_packets: 0
     tx_queue_25_bytes: 0
     tx_queue_26_packets: 0
     tx_queue_26_bytes: 0
     tx_queue_27_packets: 0
     tx_queue_27_bytes: 0
     tx_queue_28_packets: 0
     tx_queue_28_bytes: 0
     tx_queue_29_packets: 0
     tx_queue_29_bytes: 0
     tx_queue_30_packets: 0
     tx_queue_30_bytes: 0
     tx_queue_31_packets: 0
     tx_queue_31_bytes: 0
     tx_queue_32_packets: 0
     tx_queue_32_bytes: 0
     tx_queue_33_packets: 0
     tx_queue_33_bytes: 0
     tx_queue_34_packets: 0
     tx_queue_34_bytes: 0
     tx_queue_35_packets: 0
     tx_queue_35_bytes: 0
     tx_queue_36_packets: 0
     tx_queue_36_bytes: 0
     tx_queue_37_packets: 0
     tx_queue_37_bytes: 0
     tx_queue_38_packets: 0
     tx_queue_38_bytes: 0
     tx_queue_39_packets: 0
     tx_queue_39_bytes: 0
     tx_queue_40_packets: 0
     tx_queue_40_bytes: 0
     tx_queue_41_packets: 0
     tx_queue_41_bytes: 0
     tx_queue_42_packets: 0
     tx_queue_42_bytes: 0
     tx_queue_43_packets: 0
     tx_queue_43_bytes: 0
     tx_queue_44_packets: 0
     tx_queue_44_bytes: 0
     tx_queue_45_packets: 0
     tx_queue_45_bytes: 0
     tx_queue_46_packets: 0
     tx_queue_46_bytes: 0
     tx_queue_47_packets: 0
     tx_queue_47_bytes: 0
     tx_queue_48_packets: 0
     tx_queue_48_bytes: 0
     tx_queue_49_packets: 0
     tx_queue_49_bytes: 0
     tx_queue_50_packets: 0
     tx_queue_50_bytes: 0
     tx_queue_51_packets: 0
     tx_queue_51_bytes: 0
     tx_queue_52_packets: 0
     tx_queue_52_bytes: 0
     tx_queue_53_packets: 0
     tx_queue_53_bytes: 0
     tx_queue_54_packets: 0
     tx_queue_54_bytes: 0
     tx_queue_55_packets: 0
     tx_queue_55_bytes: 0
     tx_queue_56_packets: 4
     tx_queue_56_bytes: 468
     tx_queue_57_packets: 0
     tx_queue_57_bytes: 0
     tx_queue_58_packets: 0
     tx_queue_58_bytes: 0
     tx_queue_59_packets: 0
     tx_queue_59_bytes: 0
     tx_queue_60_packets: 1061658
     tx_queue_60_bytes: 8403020004
     tx_queue_61_packets: 4029
     tx_queue_61_bytes: 333314
     tx_queue_62_packets: 0
     tx_queue_62_bytes: 0
     tx_queue_63_packets: 0
     tx_queue_63_bytes: 0
     rx_queue_0_packets: 5
     rx_queue_0_bytes: 300
     rx_queue_1_packets: 0
     rx_queue_1_bytes: 0
     rx_queue_2_packets: 0
     rx_queue_2_bytes: 0
     rx_queue_3_packets: 0
     rx_queue_3_bytes: 0
     rx_queue_4_packets: 0
     rx_queue_4_bytes: 0
     rx_queue_5_packets: 0
     rx_queue_5_bytes: 0
     rx_queue_6_packets: 0
     rx_queue_6_bytes: 0
     rx_queue_7_packets: 0
     rx_queue_7_bytes: 0
     rx_queue_8_packets: 0
     rx_queue_8_bytes: 0
     rx_queue_9_packets: 0
     rx_queue_9_bytes: 0
     rx_queue_10_packets: 0
     rx_queue_10_bytes: 0
     rx_queue_11_packets: 0
     rx_queue_11_bytes: 0
     rx_queue_12_packets: 0
     rx_queue_12_bytes: 0
     rx_queue_13_packets: 0
     rx_queue_13_bytes: 0
     rx_queue_14_packets: 0
     rx_queue_14_bytes: 0
     rx_queue_15_packets: 0
     rx_queue_15_bytes: 0
     rx_queue_16_packets: 0
     rx_queue_16_bytes: 0
     rx_queue_17_packets: 0
     rx_queue_17_bytes: 0
     rx_queue_18_packets: 0
     rx_queue_18_bytes: 0
     rx_queue_19_packets: 0
     rx_queue_19_bytes: 0
     rx_queue_20_packets: 146646
     rx_queue_20_bytes: 12030474
     rx_queue_21_packets: 0
     rx_queue_21_bytes: 0
     rx_queue_22_packets: 0
     rx_queue_22_bytes: 0
     rx_queue_23_packets: 0
     rx_queue_23_bytes: 0
     rx_queue_24_packets: 0
     rx_queue_24_bytes: 0
     rx_queue_25_packets: 0
     rx_queue_25_bytes: 0
     rx_queue_26_packets: 0
     rx_queue_26_bytes: 0
     rx_queue_27_packets: 0
     rx_queue_27_bytes: 0
     rx_queue_28_packets: 0
     rx_queue_28_bytes: 0
     rx_queue_29_packets: 0
     rx_queue_29_bytes: 0
     rx_queue_30_packets: 0
     rx_queue_30_bytes: 0
     rx_queue_31_packets: 0
     rx_queue_31_bytes: 0
     rx_queue_32_packets: 0
     rx_queue_32_bytes: 0
     rx_queue_33_packets: 0
     rx_queue_33_bytes: 0
     rx_queue_34_packets: 0
     rx_queue_34_bytes: 0
     rx_queue_35_packets: 0
     rx_queue_35_bytes: 0
     rx_queue_36_packets: 0
     rx_queue_36_bytes: 0
     rx_queue_37_packets: 0
     rx_queue_37_bytes: 0
     rx_queue_38_packets: 0
     rx_queue_38_bytes: 0
     rx_queue_39_packets: 0
     rx_queue_39_bytes: 0
     rx_queue_40_packets: 0
     rx_queue_40_bytes: 0
     rx_queue_41_packets: 0
     rx_queue_41_bytes: 0
     rx_queue_42_packets: 0
     rx_queue_42_bytes: 0
     rx_queue_43_packets: 0
     rx_queue_43_bytes: 0
     rx_queue_44_packets: 0
     rx_queue_44_bytes: 0
     rx_queue_45_packets: 0
     rx_queue_45_bytes: 0
     rx_queue_46_packets: 0
     rx_queue_46_bytes: 0
     rx_queue_47_packets: 0
     rx_queue_47_bytes: 0
     rx_queue_48_packets: 0
     rx_queue_48_bytes: 0
     rx_queue_49_packets: 0
     rx_queue_49_bytes: 0
     rx_queue_50_packets: 0
     rx_queue_50_bytes: 0
     rx_queue_51_packets: 0
     rx_queue_51_bytes: 0
     rx_queue_52_packets: 0
     rx_queue_52_bytes: 0
     rx_queue_53_packets: 0
     rx_queue_53_bytes: 0
     rx_queue_54_packets: 0
     rx_queue_54_bytes: 0
     rx_queue_55_packets: 0
     rx_queue_55_bytes: 0
     rx_queue_56_packets: 0
     rx_queue_56_bytes: 0
     rx_queue_57_packets: 0
     rx_queue_57_bytes: 0
     rx_queue_58_packets: 0
     rx_queue_58_bytes: 0
     rx_queue_59_packets: 0
     rx_queue_59_bytes: 0
     rx_queue_60_packets: 0
     rx_queue_60_bytes: 0
     rx_queue_61_packets: 0
     rx_queue_61_bytes: 0
     rx_queue_62_packets: 0
     rx_queue_62_bytes: 0
     rx_queue_63_packets: 0
     rx_queue_63_bytes: 0
     tx_pb_0_pxon: 0
     tx_pb_0_pxoff: 0
     tx_pb_1_pxon: 0
     tx_pb_1_pxoff: 0
     tx_pb_2_pxon: 0
     tx_pb_2_pxoff: 0
     tx_pb_3_pxon: 0
     tx_pb_3_pxoff: 0
     tx_pb_4_pxon: 0
     tx_pb_4_pxoff: 0
     tx_pb_5_pxon: 0
     tx_pb_5_pxoff: 0
     tx_pb_6_pxon: 0
     tx_pb_6_pxoff: 0
     tx_pb_7_pxon: 0
     tx_pb_7_pxoff: 0
     rx_pb_0_pxon: 0
     rx_pb_0_pxoff: 0
     rx_pb_1_pxon: 0
     rx_pb_1_pxoff: 0
     rx_pb_2_pxon: 0
     rx_pb_2_pxoff: 0
     rx_pb_3_pxon: 0
     rx_pb_3_pxoff: 0
     rx_pb_4_pxon: 0
     rx_pb_4_pxoff: 0
     rx_pb_5_pxon: 0
     rx_pb_5_pxoff: 0
     rx_pb_6_pxon: 0
     rx_pb_6_pxoff: 0
     rx_pb_7_pxon: 0
     rx_pb_7_pxoff: 0
```

--b1_BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Good catch!!!</p><p>I updated it now, but still have the same result=E2=
=80=A6printing S=E2=80=99s when directly connected to the powerful server=
.</p><p>I repeated the test on the USRP PC (2974) with the same results, =
printed U=E2=80=99s.</p><p>For the server, I cleared the NIC stats, then =
ran the program for a few seconds.  Here is the resulting statistics for =
the NIC, and I don=E2=80=99t see anything abnormal.  It=E2=80=99s my unde=
rstanding that for intel NICS, fdir_miss is normal.</p><p>Do you see anyt=
hing abnormal?  Any chance someone else could try this .cpp file?  I appr=
eciate the help=E2=80=A6. I not sure what to try next.</p><pre><code>
sudo ethtool -S eno2
NIC statistics:
     rx_packets: 146651
     tx_packets: 1065751
     rx_bytes: 12030774
     tx_bytes: 8403361197
     rx_pkts_nic: 146651
     tx_pkts_nic: 1065750
     rx_bytes_nic: 12617378
     tx_bytes_nic: 8407627498
     lsc_int: 2
     tx_busy: 0
     non_eop_descs: 20
     rx_errors: 0
     tx_errors: 0
     rx_dropped: 0
     tx_dropped: 0
     multicast: 0
     broadcast: 4
     rx_no_buffer_count: 0
     collisions: 0
     rx_over_errors: 0
     rx_crc_errors: 0
     rx_frame_errors: 0
     hw_rsc_aggregated: 0
     hw_rsc_flushed: 0
     fdir_match: 0
     fdir_miss: 146646
     fdir_overflow: 0
     rx_fifo_errors: 0
     rx_missed_errors: 0
     tx_aborted_errors: 0
     tx_carrier_errors: 0
     tx_fifo_errors: 0
     tx_heartbeat_errors: 0
     tx_timeout_count: 0
     tx_restart_queue: 0
     rx_length_errors: 0
     rx_long_length_errors: 0
     rx_short_length_errors: 0
     tx_flow_control_xon: 0
     rx_flow_control_xon: 0
     tx_flow_control_xoff: 0
     rx_flow_control_xoff: 0
     rx_csum_offload_errors: 0
     alloc_rx_page: 326466
     alloc_rx_page_failed: 0
     alloc_rx_buff_failed: 0
     rx_no_dma_resources: 0
     os2bmc_rx_by_bmc: 0
     os2bmc_tx_by_bmc: 0
     os2bmc_tx_by_host: 0
     os2bmc_rx_by_host: 0
     tx_hwtstamp_timeouts: 0
     tx_hwtstamp_skipped: 0
     rx_hwtstamp_cleared: 0
     tx_ipsec: 0
     rx_ipsec: 0
     fcoe_bad_fccrc: 0
     rx_fcoe_dropped: 0
     rx_fcoe_packets: 0
     rx_fcoe_dwords: 0
     fcoe_noddp: 0
     fcoe_noddp_ext_buff: 0
     tx_fcoe_packets: 0
     tx_fcoe_dwords: 0
     tx_queue_0_packets: 0
     tx_queue_0_bytes: 0
     tx_queue_1_packets: 0
     tx_queue_1_bytes: 0
     tx_queue_2_packets: 45
     tx_queue_2_bytes: 6177
     tx_queue_3_packets: 0
     tx_queue_3_bytes: 0
     tx_queue_4_packets: 0
     tx_queue_4_bytes: 0
     tx_queue_5_packets: 0
     tx_queue_5_bytes: 0
     tx_queue_6_packets: 0
     tx_queue_6_bytes: 0
     tx_queue_7_packets: 0
     tx_queue_7_bytes: 0
     tx_queue_8_packets: 0
     tx_queue_8_bytes: 0
     tx_queue_9_packets: 0
     tx_queue_9_bytes: 0
     tx_queue_10_packets: 6
     tx_queue_10_bytes: 500
     tx_queue_11_packets: 8
     tx_queue_11_bytes: 676
     tx_queue_12_packets: 0
     tx_queue_12_bytes: 0
     tx_queue_13_packets: 0
     tx_queue_13_bytes: 0
     tx_queue_14_packets: 0
     tx_queue_14_bytes: 0
     tx_queue_15_packets: 0
     tx_queue_15_bytes: 0
     tx_queue_16_packets: 0
     tx_queue_16_bytes: 0
     tx_queue_17_packets: 0
     tx_queue_17_bytes: 0
     tx_queue_18_packets: 0
     tx_queue_18_bytes: 0
     tx_queue_19_packets: 0
     tx_queue_19_bytes: 0
     tx_queue_20_packets: 0
     tx_queue_20_bytes: 0
     tx_queue_21_packets: 0
     tx_queue_21_bytes: 0
     tx_queue_22_packets: 0
     tx_queue_22_bytes: 0
     tx_queue_23_packets: 0
     tx_queue_23_bytes: 0
     tx_queue_24_packets: 1
     tx_queue_24_bytes: 58
     tx_queue_25_packets: 0
     tx_queue_25_bytes: 0
     tx_queue_26_packets: 0
     tx_queue_26_bytes: 0
     tx_queue_27_packets: 0
     tx_queue_27_bytes: 0
     tx_queue_28_packets: 0
     tx_queue_28_bytes: 0
     tx_queue_29_packets: 0
     tx_queue_29_bytes: 0
     tx_queue_30_packets: 0
     tx_queue_30_bytes: 0
     tx_queue_31_packets: 0
     tx_queue_31_bytes: 0
     tx_queue_32_packets: 0
     tx_queue_32_bytes: 0
     tx_queue_33_packets: 0
     tx_queue_33_bytes: 0
     tx_queue_34_packets: 0
     tx_queue_34_bytes: 0
     tx_queue_35_packets: 0
     tx_queue_35_bytes: 0
     tx_queue_36_packets: 0
     tx_queue_36_bytes: 0
     tx_queue_37_packets: 0
     tx_queue_37_bytes: 0
     tx_queue_38_packets: 0
     tx_queue_38_bytes: 0
     tx_queue_39_packets: 0
     tx_queue_39_bytes: 0
     tx_queue_40_packets: 0
     tx_queue_40_bytes: 0
     tx_queue_41_packets: 0
     tx_queue_41_bytes: 0
     tx_queue_42_packets: 0
     tx_queue_42_bytes: 0
     tx_queue_43_packets: 0
     tx_queue_43_bytes: 0
     tx_queue_44_packets: 0
     tx_queue_44_bytes: 0
     tx_queue_45_packets: 0
     tx_queue_45_bytes: 0
     tx_queue_46_packets: 0
     tx_queue_46_bytes: 0
     tx_queue_47_packets: 0
     tx_queue_47_bytes: 0
     tx_queue_48_packets: 0
     tx_queue_48_bytes: 0
     tx_queue_49_packets: 0
     tx_queue_49_bytes: 0
     tx_queue_50_packets: 0
     tx_queue_50_bytes: 0
     tx_queue_51_packets: 0
     tx_queue_51_bytes: 0
     tx_queue_52_packets: 0
     tx_queue_52_bytes: 0
     tx_queue_53_packets: 0
     tx_queue_53_bytes: 0
     tx_queue_54_packets: 0
     tx_queue_54_bytes: 0
     tx_queue_55_packets: 0
     tx_queue_55_bytes: 0
     tx_queue_56_packets: 4
     tx_queue_56_bytes: 468
     tx_queue_57_packets: 0
     tx_queue_57_bytes: 0
     tx_queue_58_packets: 0
     tx_queue_58_bytes: 0
     tx_queue_59_packets: 0
     tx_queue_59_bytes: 0
     tx_queue_60_packets: 1061658
     tx_queue_60_bytes: 8403020004
     tx_queue_61_packets: 4029
     tx_queue_61_bytes: 333314
     tx_queue_62_packets: 0
     tx_queue_62_bytes: 0
     tx_queue_63_packets: 0
     tx_queue_63_bytes: 0
     rx_queue_0_packets: 5
     rx_queue_0_bytes: 300
     rx_queue_1_packets: 0
     rx_queue_1_bytes: 0
     rx_queue_2_packets: 0
     rx_queue_2_bytes: 0
     rx_queue_3_packets: 0
     rx_queue_3_bytes: 0
     rx_queue_4_packets: 0
     rx_queue_4_bytes: 0
     rx_queue_5_packets: 0
     rx_queue_5_bytes: 0
     rx_queue_6_packets: 0
     rx_queue_6_bytes: 0
     rx_queue_7_packets: 0
     rx_queue_7_bytes: 0
     rx_queue_8_packets: 0
     rx_queue_8_bytes: 0
     rx_queue_9_packets: 0
     rx_queue_9_bytes: 0
     rx_queue_10_packets: 0
     rx_queue_10_bytes: 0
     rx_queue_11_packets: 0
     rx_queue_11_bytes: 0
     rx_queue_12_packets: 0
     rx_queue_12_bytes: 0
     rx_queue_13_packets: 0
     rx_queue_13_bytes: 0
     rx_queue_14_packets: 0
     rx_queue_14_bytes: 0
     rx_queue_15_packets: 0
     rx_queue_15_bytes: 0
     rx_queue_16_packets: 0
     rx_queue_16_bytes: 0
     rx_queue_17_packets: 0
     rx_queue_17_bytes: 0
     rx_queue_18_packets: 0
     rx_queue_18_bytes: 0
     rx_queue_19_packets: 0
     rx_queue_19_bytes: 0
     rx_queue_20_packets: 146646
     rx_queue_20_bytes: 12030474
     rx_queue_21_packets: 0
     rx_queue_21_bytes: 0
     rx_queue_22_packets: 0
     rx_queue_22_bytes: 0
     rx_queue_23_packets: 0
     rx_queue_23_bytes: 0
     rx_queue_24_packets: 0
     rx_queue_24_bytes: 0
     rx_queue_25_packets: 0
     rx_queue_25_bytes: 0
     rx_queue_26_packets: 0
     rx_queue_26_bytes: 0
     rx_queue_27_packets: 0
     rx_queue_27_bytes: 0
     rx_queue_28_packets: 0
     rx_queue_28_bytes: 0
     rx_queue_29_packets: 0
     rx_queue_29_bytes: 0
     rx_queue_30_packets: 0
     rx_queue_30_bytes: 0
     rx_queue_31_packets: 0
     rx_queue_31_bytes: 0
     rx_queue_32_packets: 0
     rx_queue_32_bytes: 0
     rx_queue_33_packets: 0
     rx_queue_33_bytes: 0
     rx_queue_34_packets: 0
     rx_queue_34_bytes: 0
     rx_queue_35_packets: 0
     rx_queue_35_bytes: 0
     rx_queue_36_packets: 0
     rx_queue_36_bytes: 0
     rx_queue_37_packets: 0
     rx_queue_37_bytes: 0
     rx_queue_38_packets: 0
     rx_queue_38_bytes: 0
     rx_queue_39_packets: 0
     rx_queue_39_bytes: 0
     rx_queue_40_packets: 0
     rx_queue_40_bytes: 0
     rx_queue_41_packets: 0
     rx_queue_41_bytes: 0
     rx_queue_42_packets: 0
     rx_queue_42_bytes: 0
     rx_queue_43_packets: 0
     rx_queue_43_bytes: 0
     rx_queue_44_packets: 0
     rx_queue_44_bytes: 0
     rx_queue_45_packets: 0
     rx_queue_45_bytes: 0
     rx_queue_46_packets: 0
     rx_queue_46_bytes: 0
     rx_queue_47_packets: 0
     rx_queue_47_bytes: 0
     rx_queue_48_packets: 0
     rx_queue_48_bytes: 0
     rx_queue_49_packets: 0
     rx_queue_49_bytes: 0
     rx_queue_50_packets: 0
     rx_queue_50_bytes: 0
     rx_queue_51_packets: 0
     rx_queue_51_bytes: 0
     rx_queue_52_packets: 0
     rx_queue_52_bytes: 0
     rx_queue_53_packets: 0
     rx_queue_53_bytes: 0
     rx_queue_54_packets: 0
     rx_queue_54_bytes: 0
     rx_queue_55_packets: 0
     rx_queue_55_bytes: 0
     rx_queue_56_packets: 0
     rx_queue_56_bytes: 0
     rx_queue_57_packets: 0
     rx_queue_57_bytes: 0
     rx_queue_58_packets: 0
     rx_queue_58_bytes: 0
     rx_queue_59_packets: 0
     rx_queue_59_bytes: 0
     rx_queue_60_packets: 0
     rx_queue_60_bytes: 0
     rx_queue_61_packets: 0
     rx_queue_61_bytes: 0
     rx_queue_62_packets: 0
     rx_queue_62_bytes: 0
     rx_queue_63_packets: 0
     rx_queue_63_bytes: 0
     tx_pb_0_pxon: 0
     tx_pb_0_pxoff: 0
     tx_pb_1_pxon: 0
     tx_pb_1_pxoff: 0
     tx_pb_2_pxon: 0
     tx_pb_2_pxoff: 0
     tx_pb_3_pxon: 0
     tx_pb_3_pxoff: 0
     tx_pb_4_pxon: 0
     tx_pb_4_pxoff: 0
     tx_pb_5_pxon: 0
     tx_pb_5_pxoff: 0
     tx_pb_6_pxon: 0
     tx_pb_6_pxoff: 0
     tx_pb_7_pxon: 0
     tx_pb_7_pxoff: 0
     rx_pb_0_pxon: 0
     rx_pb_0_pxoff: 0
     rx_pb_1_pxon: 0
     rx_pb_1_pxoff: 0
     rx_pb_2_pxon: 0
     rx_pb_2_pxoff: 0
     rx_pb_3_pxon: 0
     rx_pb_3_pxoff: 0
     rx_pb_4_pxon: 0
     rx_pb_4_pxoff: 0
     rx_pb_5_pxon: 0
     rx_pb_5_pxoff: 0
     rx_pb_6_pxon: 0
     rx_pb_6_pxoff: 0
     rx_pb_7_pxon: 0
     rx_pb_7_pxoff: 0</code></pre>


--b1_BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o--

--===============6199523033885926033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6199523033885926033==--
