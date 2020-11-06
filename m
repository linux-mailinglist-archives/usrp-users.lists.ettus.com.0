Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF6E2A9C01
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 19:25:15 +0100 (CET)
Received: from [::1] (port=58144 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kb6QE-0002oS-O2; Fri, 06 Nov 2020 13:25:14 -0500
Received: from lifc.univ-fcomte.fr ([194.57.88.66]:41916 helo=mail.femto-st.fr)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jeanmichel.friedt@femto-st.fr>)
 id 1kb6QA-0002hE-OK
 for USRP-users@lists.ettus.com; Fri, 06 Nov 2020 13:25:10 -0500
Received: from cloud.femto-st.fr ([172.20.208.1]) (authenticated bits=0)
 by mail.femto-st.fr (8.15.2/8.15.2/Debian-8) with ESMTPSA id 0A6IONZe012351
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 6 Nov 2020 19:24:23 +0100
MIME-Version: 1.0
Date: Fri, 06 Nov 2020 18:24:23 +0000
X-Mailer: RainLoop/1.14.0
Message-ID: <d8bc79c1f7f77da9da610d725e36c46e@femto-st.fr>
To: "Marcus D Leech" <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <0F1966AE-CCC9-46A6-B184-22FF25A9A724@gmail.com>
References: <0F1966AE-CCC9-46A6-B184-22FF25A9A724@gmail.com>
 <d848c9f0b4b84b34d90d138b5e96c383@femto-st.fr>
X-Scanned-By: MIMEDefang 2.79 on 194.57.88.66
Subject: Re: [USRP-users] B210 drops one sample every 2^32 samples !
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
From: JM Friedt via USRP-users <usrp-users@lists.ettus.com>
Reply-To: jeanmichel.friedt@femto-st.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

I was waiting to confirm measurements:
* I confirm libuhd 3.15 running the X310 will NOT display the same effect 
* I confirm libuhd 4 DOES display the same effect on the B210.

I can provide the charts which I did not upload on the gnss-sdr github issue
as demonstration of these measurements.

Thanks, JM

--
JM Friedt, FEMTO-ST Time & Frequency, 26 rue de l'Epitaphe, 25000 Besancon, France

November 6, 2020 7:18 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:

> Do you see the same thing on other platforms? What about newer/older UHD versions?
> 
> Sent from my iPhone
> 
>> On Nov 6, 2020, at 5:29 AM, JM Friedt via USRP-users <usrp-users@lists.ettus.com> wrote:
>> 
>> While analyzing GPS timing capabilities of gnss-sdr as described at
>> https://github.com/gnss-sdr/gnss-sdr/issues/442
>> we have become convinced that the B210 transferring data using libuhd 3.15
>> drops one samples every 2^32 (i.e one sample every 4294967296). This conclusion
>> was reached by changing the sampling rate and observing that the time shift in
>> the GPS timing capability was jumping by one sample period every 4294967296
>> acquisitions (i.e. 36 minutes at 2 MS/s or 57 minutes at 1.25 MS/s). This issue
>> is NOT observed with an X310 streaming data to the same libuhd source.
>> We have no idea how to address or solve the problem, but any hint at how to correct
>> the issue would be welcome.
>> 
>> Thank you, Jean-Michel
>> 
>> [1] running on a Raspberry Pi4 with a 64-bit kernel and 64-bit libraries/toolchain compiled
>> with Buildroot
>> 
>> --
>> JM Friedt, FEMTO-ST Time & Frequency, 26 rue de l'Epitaphe, 25000 Besancon, France
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
