Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF7E170695
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2020 18:50:20 +0100 (CET)
Received: from [::1] (port=40966 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j70p8-0001jm-F6; Wed, 26 Feb 2020 12:50:18 -0500
Received: from mout.gmx.net ([212.227.15.15]:37291)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1j70p4-0001JZ-3t
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 12:50:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582739373;
 bh=whNNGdaW1AzDL52N+NKqG/Twt3qwsTmbHMCaspDBpLs=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=V4Z4w3JvJzX5B2wHw0n/+Nnb4yXiNu29XGLVEdLIe/ThzI9JcLcP3WqO66SKTpuoq
 /ck3NiQNAH6u04iJoi7VzXF7DggmYwSXKvCviHWeXsQvakMoIZOgXvX4d3UXCr3D0p
 BhnofXMe6J07Q9Ge0aLtvZCJjoO/qJSvLqlyQ62E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs74.server.lan [172.19.170.217]) (via HTTP); Wed, 26 Feb 2020
 18:49:32 +0100
MIME-Version: 1.0
Message-ID: <trinity-dc464465-b71b-40a8-9a5e-b1ac252681b1-1582739372927@3c-app-gmx-bs74>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 26 Feb 2020 18:49:32 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:qAoKMBgZ+Ftajpgy1S7IZLe3nLVklP7C5KYCf5vq1Kylz63wegItIKtVB1IbVvKIgmqL+
 i39YceAmivAHoU/vXYcyIzVkjzHs9oOO6blKhkmCIXDfHAcT0ihAzh6qAFTKiwyC+7AwWSeiMjqh
 eLJjYK2Q+zHMuoA0RhQk/U6MoSvLEKmocQF9LAceWyD8z+pLJUgo6Xsn5wjzGWEfltkBmfv9aUTu
 FmObVV7XpZfTKlbYS/yG87vHcuqt+lrIgcg98PUUID5PcFnIMHOH7RrwkyTgnzPrJgrnU801ctHi
 7k=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bU9gsV8KIyY=:OZN4bHTwsXZyYN1CGIk2ND
 PoBWtLKWiNjj4hRGaa0Z2klkj9ACvLIQNI8RgpKAa48+dM3LXq43jJOMScgM/hnk581OjwVPk
 v9q0Sto3ZwISv3qEKL3IR+Yw/fWy2E1E3LV7CjIzPzgZiLb1RB5uF0p3rT1++lbdL9P6jryWd
 dOc0HN1C2Mrlv7x3fo+eltLw4qvEZUw2sQY31TpZu1DRfVGgnbmipFJLWBprVWtDzXIObmMM8
 kzPL8QCSnj4okaFtUpfxFBEw6LfaA8hEOFJL/63mgbL0ndRvY/y+TIDUAtJzF7mLJu6kdbFLp
 E5pVOIiHdljaWlcRe68t47vvl9n3F/VkZDlkEI0q+R56wHmB2szVVfy7RgGorwkxoHfnZNlY1
 NLrTUH8Rt4ScQESuaxj6NlsMOcBDkJ59l+uoWJDvHqTPNMjoJ6G/kf9g7TJMMOpL8hODxG/6G
 Pm3xEchHciWTluibXIyhjr5ASVPCU3R21ZgejfDXu9UJZZNGNGzAAX9mc6e1jUeA/qcdsyKp3
 xcIlqGwfPkOuW08kq+Teyz0V/8W5MIZRxIxZEP2VdIiSFW8CEbk/7gR/Di3yoQjV3z66oSO3f
 AK9HWQ5dIQ1cO9yPsLUvlJDCTOK4PPA6FvOfdjxYRyuRLsqHdamOReqjrJ1WYo7qdIllv5vff
 RSSUb95tKLp+XKhOGm+yrrsD30lmRv4xHqLHolk4AMxKrW05fLihDBWURzS0DLwBzVuo=
Subject: [USRP-users] Crash when adding device_addr to tune_request.args
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
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

Hi,

I have added a usrp_block_impl::_cmd_handler_freq2 which adds "args" to the tune_request object:

void usrp_block_impl::_cmd_handler_freq2(const pmt::pmt_t& freq_,
                                        int chan,
                                        const pmt::pmt_t& msg)
{
    double freq = pmt::to_double(freq_);
    ::uhd::tune_request_t new_tune_reqest(freq);
    if (pmt::dict_has_key(msg, cmd_lo_offset_key())) {
        double lo_offset =
            pmt::to_double(pmt::dict_ref(msg, cmd_lo_offset_key(), pmt::PMT_NIL));
        new_tune_reqest = ::uhd::tune_request_t(freq, lo_offset);
    }

    new_tune_reqest.args = ::uhd::device_addr_t("mode_n=integer");
    _update_curr_tune_req(new_tune_reqest, chan);
}

This makes gnuradio crash when I send the "freq2" message together with "looffset". The segfault happens in usrp_block_impl::_cmd_handler_looffset. For reference, the gdb backtrace is shown here: https://paste.ubuntu.com/p/wYG54D5QRy/

Is there anything wrong with that?

Thanks,
Luke


PS: I wanted to confirm: If I want to use integer-N PLL with a given stepsize, do I really have to add this to every single tune_request_t object or could I add it to the the device addr string of the USRP Source/Sink device? (Disclaimer: this doesn't seem to work though ...)




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
