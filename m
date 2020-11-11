Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF0F2AF34F
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 15:15:14 +0100 (CET)
Received: from [::1] (port=48476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcqu1-000269-Ia; Wed, 11 Nov 2020 09:15:13 -0500
Received: from sonic306-21.consmr.mail.ne1.yahoo.com ([66.163.189.83]:36999)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikerd1@verizon.net>) id 1kcqtx-0001tE-Nt
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 09:15:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1605104067; bh=C5GMQE7z3O1tAxn9Qkb7YQcoLZOZbToqsvu9455OtRQ=;
 h=To:From:Subject:Date:References:From:Subject;
 b=M/dHW4AWI/bkLQ37xeWvpuB+Wetn46S69PpHFbjy1589UEYUIObaZzR/cVW1JzklOGUMJkj8xzLC/PZfEUhe1ogDSu9Mn5SbmFwXmuIYWDnmVoxgVqeu5CZMC4INLVhE3dEVOTzTuUwdww0EbNbMQzv28+TSGSZVMd8WwprZDJZRbf6MBwKYcshsguxboTDEzW19KVhYaQERI6tnTkT2q2GpllDdjXos8jKT1pjMSKKI7BgLpgt7hPX+7ped8SfFOGn3rEIVQPtYdI8LBzc2bxj8JeMIy+Fb/IiDbYleZMHoc5k6XPy4x8veFnzQ79lWsK6BIXKF/oG10FXMfWzx9g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1605104067; bh=bJwxulYm2GU7vh2IeIYusyq1rqQ1iLxw6ZEgAvzXSyU=;
 h=To:From:Subject:Date:From:Subject;
 b=EDdA97obKx8N3a/PnFrT2NHhuyPslLlest65Pk6pmJ2609gh7sxwXvFE6ShuCyeGb53WD71Ituh05G51NA2f6GnMEuz5FNEij5nDGETPWYm32Wm8Nrs6/2yXgGsQy9CqBv7FUbWLnT9lVgtcBJKE3CTF3xCDz8V9W6ol35jSYQ+taAPRoDU9wssxblo2Rsd8w6QVBs8o9Z7Rcqao4DzcAyg9UC7Ofrvf0bpLJXfJXweOG/eOUxc21iou1N6WAdwmXMshQPjFDeosm5b1wl5W5OAwJOvSPSWqnRjRSOZVooxizauqsHDCCwO+wOnjxYchET8ov6X0CWLFaCmd3nR0+w==
X-YMail-OSG: jsyVjiIVM1maV_ilDTlTnAU.2V8QM3_5D5vWfvEfhjLFJIslP5YM4XOmkr.yHkV
 aXIrc3C6UXsfaxF_qKTCw_s8UIO0XGlO96.2jn2Si.FXWgpWyjfAoZAWPdBNHsyKPMYlI5lR_wKa
 yI9wPOxOAonzPirJFUWUyh34_6M5daWqjsI2oAIfSRrkhmkWwijWuM_t0pyHqtWig4nYi9Q4M57j
 5IYAVOTAJAQEC.rM.VFB7O8PcECj.n79.YYQ8PXz1JXRDBmUEt766DcjFW_.yREhz9H_SvXwqCmZ
 v9KiKshKa_9WYLEIKMMCUaofXGra7VePMSIa8gYJb20_IS2wamg_7XMmKBmMTgASlnto0BnGd51Z
 Yb4AtBsjhPkWbel.KW4SSnSacnLVI3nU_CnV.zbUzRLRM0rM7X9QpMBsE6WS8h30Vg5gofTZEwlw
 8BozWY4LxvvEK3qX2A1rDwYTpTPv3GOIn_p9l4nUKe87P1VT24wBM46AGMKTFiAHxMfunh56hVVs
 ecVcBhLJS0Tgw8.VWVAh8AtsS8pFRcdBbGabFT8xHJhq32ShQ_WaJynQnbw_UjxZar_LPi3Oy1LB
 0sP2NrU1wEPNjZGrbp1xWBBrFu1bzrwaQ1U2NlpAxvZDrxFTY9y62UJ_2fDeNExObyvHwHus4okG
 EtvXoHW6xvdpDmjFbI6CrbSe8INoD7uusUKl.gpOAhBJrnlyU4Ofxu78Mbw6BIL.c.3QS3Jjk7j4
 1yhxkPl1Fj6Qd2j5hlhedjQqobYjsawNkZZlsdvrTC9LmJua8Qpa7rHGyIbaO2X5AKSgO19guV2C
 WRSH_iFk3EWrFnooSZoKQgVyPnjxZpDhuUXZppmaHhNTnK1Dny8YZZ0kKy9m3v3f.893WhC86ix.
 SkerelMSzB6dJFLG4L38KkXU8CT.bER13fUrLPu7ZIZNGd0UuifwpmUWdAXZYNRF.Vaw7Y4NSVJX
 A4L6hqNlgfusYZfCN4OJfqoSXMQ3auQGoilWXTh3hq01FAylGGKZEd75u.ihfnOWFNrh4ZzZzzoJ
 oT88Rm.usxdKSszgDPxSRgrVZTfhDo3QU8BLZl0pZ.RMQaWI3FgBzCLLgCUa4vgq7ik.4u92GDlE
 6UxfRUx6fZti0f9n9jtzEupY69FMmXkaYF9nSGtaTJpAfbqDIb6UyCaTlxHhTSbn3jFZnoVv6gh8
 seEs9kkrr_lTlSsjn6oDu7c2XY8zQwqef_Wn1tNPE58XQvI4JETF_FGWrgvgEZ3BKm4lYkIqcqWL
 5tiXLAz_22BsjqLWmrEL8Kdbv_d_GPQYauN80PKyeoWFPCyblizyoKfRCZdttKfSexyawkXYz01J
 e4RrQOy5860_wVSaWQbccJxto1UBLTbtw3gMdMnoE3kb5SCf39dNga0jHBjguznF__YrCtb6ZhQ.
 eCgs6nHp7chFMgYxFBYlR9z7SYxRSglfOYS1jeDk4yGJEs0thtXZmfJI508K7FrCESdxIeDIDF3C
 kZTj9Q8G0CyQFPZLQtLjK5xJC7oesovHEzBpRp8ikCMrLlEnz
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ne1.yahoo.com with HTTP; Wed, 11 Nov 2020 14:14:27 +0000
Received: by smtp425.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID cdf5ea50a9a014b2d769412cb6c19f9e; 
 Wed, 11 Nov 2020 14:14:24 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <5d7fbe13-20e4-a896-ee16-24065d4bb8fa@verizon.net>
Date: Wed, 11 Nov 2020 09:14:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <5d7fbe13-20e4-a896-ee16-24065d4bb8fa.ref@verizon.net>
X-Mailer: WebService/1.1.16944
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Subject: [USRP-users] RFNOC - noc_block_gain not found
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SGksCgpJJ3ZlIGJlZW4gZ29pbmcgdGhyb3VnaCBBTi04MjMgKEdldHRpbmcgc3RhcnRlZCB3aXRo
IFJGTm9DIERldmVsb3BtZW50KSAKYW5kIGhhdmUgc3VjY2Vzc2Z1bGx5IGdvdHRlbiB0aHJvdWdo
IHRoZSBwb2ludCBvZiBzaW11bGF0aW5nIHRoZSBnYWluIAp0ZXN0IGJlbmNoIHdpdGggcG9zaXRp
dmUgcmVzdWx0cy4KCkknbSBhdHRlbXB0aW5nIHRvIGJ1aWxkIHRoZSBGUEdBIG5vdyB3aXRoIHRo
ZSBuZXcgT09UIG1vZHVsZS4gSSd2ZSAKc3VjY2Vzc2Z1bGx5IGJ1aWx0IHdpdGggb25seSBwcmUt
ZXhpc3RpbmcgbW9kdWxlcyBhbmQgc2VlbiBpdCB3b3JrIGluIG15IApoYXJkd2FyZSAoRTMxMCku
CgpNeSBjb21tYW5kIGlzIGFzIGZvbGxvd3M6Cgp+L3ByZWZpeC9yZm5vYzIvc3JjL3VoZC1mcGdh
L3VzcnAzL3Rvb2xzL3NjcmlwdHMkIC4vdWhkX2ltYWdlX2J1aWxkZXIucHkgCmdhaW4gZGRjIGZm
dCAtdCBFMzEwX1JGTk9DIC1kIGUzMXggLUkgCi9ob21lL21pa2UvcHJlZml4L3Jmbm9jMi9zcmMv
cmZub2MtdHV0b3JpYWwvcmZub2MvCgpJIHVzZWQgdGhlIGd1aSBjb21tYW5kIC4vdWhkX2ltYWdl
X2J1aWxkZXJfZ3VpLnB5IGJ1dCBpdCBkb2VzIG5vdCBjcmVhdGUgCnRoZSBjb3JyZWN0IGRldmlj
ZSB0eXBlICgtZCBFMzEwIHZzIC1kIGUzMXgpLgoKSSd2ZSB0cmllZCB1c2luZyAiLUkgL2hvbWUv
bWlrZS9wcmVmaXgvcmZub2MyL3NyYy9yZm5vYy10dXRvcmlhbC8iIHRvIG5vIAphdmFpbCBlaXRo
ZXIuCgpTbywgaXQgc2VlbXMgbGlrZSBJJ20gbWlzc2luZyBhIHBhdGggc29tZXdoZXJlIGluIHRo
ZSBtYWtlZmlsZXMgdGhhdCAKa2VlcHMgaXQgZnJvbSBmaW5kaW5nIHRoZSBPT1Qgc291cmNlLgoK
SSBrbm93IHRoaXMgaXMgcHJvYmFibHkgYmFzaWMgbWFrZWZpbGUgc3R1ZmYgYnV0IGl0J3Mgbm90
IGJhc2ljIHRvIG1lLsKgIApJJ20ganVzdCBhbiBGUEdBIGd1eS4KClRoYW5rcywKCk1pa2UKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
