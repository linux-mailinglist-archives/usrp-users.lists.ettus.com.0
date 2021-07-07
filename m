Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1203BEA0E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 16:50:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11B36384A20
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 10:50:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="osd0v1GE";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 42288384592
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 10:49:12 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id f12so1182201qtf.5
        for <usrp-users@lists.ettus.com>; Wed, 07 Jul 2021 07:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=FyuqMhlxoeXllwgOgf4LE4CQ0IBWB4TGqOHc6IXIniE=;
        b=osd0v1GEkVZ/I2+lyOvMPtD2pT/PyUmNb4CcI3gHQTr/YyzLK7CrBdIgeheAN0YgN+
         3X3MVYYYhLZC8vIS/BbB6CwLAOjpXQGrLtiHDqbAw7RpyONVzf1NuU4lbu8FUlkQRC3R
         fettWbytw2rwguCc8uRkCTNHxdYbqyBI0kIqWT9vUQn8I7wrofW8wf11POKUoSbSifPD
         j6cRg+Unlu5V3MfDJO3J5UUl/salGA+FXvNdZpd4V/IObPQUuNswnh7igDlVlj5P3i9A
         cqDDwSHY8Aaf2dT6V88Pkjn4E2xbFUIbBh8btRQPwocc/cFrEqYrVS2P7yG3MCAOVPKV
         F64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=FyuqMhlxoeXllwgOgf4LE4CQ0IBWB4TGqOHc6IXIniE=;
        b=eiEYyYrFeMre8c3h6gE3u8gJza9KThbUPtFkoOrVvffHA/7lyDz//WNa9OpS/uSWDi
         4+O7V0avrETjbi8rihu6wMY33qCrfuqv/MDfJpzYtD0Ft6EzY1OSKKcBkmsgMBx5Afgc
         FegoXnyWYrgpuzP/hJmtrU7rM5dYq72YDYW0EBPTisPK+N9tzrlIMH2e8xuD4uRgLX28
         m3LAY2GEr/pHhGEfk20jsXKzyYRhVkdvzKXky8jgTWuSu9akE/izKQR5B40DWcyJ8i4X
         uZw+J8ebEzvthSPpBnQ1/plMQL8xrLWp/6Qx1Rfw/wTBDoM+yaumpXtb7cRmOTPolsmc
         uSfQ==
X-Gm-Message-State: AOAM531FWY5g1edjyRzvj4ajSp+uAepUoiN6F3waO4i3X8/R9qLvvL+T
	YjEYWmoz64YzfJhoFPFYLfGo93vzRPyhrA==
X-Google-Smtp-Source: ABdhPJzP82Na9BQOtx6PjAo7W38AxwGRQILuDbzi2v7/+P5GHVcMS42oq1dZO/1dLrZXMpN8vc3ZVw==
X-Received: by 2002:ac8:1304:: with SMTP id e4mr10541618qtj.216.1625669351628;
        Wed, 07 Jul 2021 07:49:11 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id w14sm6760491qtc.55.2021.07.07.07.49.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 07:49:11 -0700 (PDT)
Message-ID: <60E5BEE6.9010200@gmail.com>
Date: Wed, 07 Jul 2021 10:49:10 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <be633461-d5cf-4e8c-0929-03736bc7e9a2@ist.osaka-u.ac.jp>
In-Reply-To: <be633461-d5cf-4e8c-0929-03736bc7e9a2@ist.osaka-u.ac.jp>
Message-ID-Hash: NSEXTWGSAANRPXYP46T27KHLGOHLBKZR
X-Message-ID-Hash: NSEXTWGSAANRPXYP46T27KHLGOHLBKZR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assertion fail when destroying tx streamer (UHD 4)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NSEXTWGSAANRPXYP46T27KHLGOHLBKZR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 07/07/2021 09:09 AM, Viktor Erdelyi wrote:
> Hi all,
>
> I get an undecipherable assertion failure when running the following 
> simple code using a 1Gbps Ethernet link. The error happens when t1 
> goes out of scope, every time I run the application. What am I missing?
>
> int main(int argc, char *argv[]) {
>     uhd::device_addr_t devAddresses("addr=192.168.10.2");
>     auto usrp = uhd::usrp::multi_usrp::make(devAddresses);
>     uhd::stream_args_t stream_args("fc32", "sc16");
>     stream_args.channels.push_back(0);
>     {
>         auto t1 = usrp->get_tx_stream(stream_args);
>         std::cout << "t1 alive" << std::endl;
>     }
>     std::cout << "t1 dead, OK" << std::endl;
>     return 0;
>
> }
>
> The output and the error is as follows:
>
> [INFO] [UHD] linux; GNU C++ version 11.0.1 20210324 (Red Hat 
> 11.0.1-0); Boost_107500; UHD_4.0.0.0
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> t1 alive
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> /usr/include/c++/11/bits/stl_vector.h:1045: std::vector<_Tp, 
> _Alloc>::reference std::vector<_Tp, 
> _Alloc>::operator[](std::vector<_Tp, _Alloc>::size_type) [with _Tp = 
> boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS, 
> boost::vecS, boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t> >, boost::vecS, boost::vecS, 
> boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t>, boost::no_property, 
> boost::listS>::config::stored_vertex; _Alloc = 
> std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS, 
> boost::vecS, boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t> >, boost::vecS, boost::vecS, 
> boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t>, boost::no_property, 
> boost::listS>::config::stored_vertex>; std::vector<_Tp, 
> _Alloc>::reference = 
> boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS, 
> boost::vecS, boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t> >, boost::vecS, boost::vecS, 
> boost::bidirectionalS, 
> boost::property<uhd::rfnoc::detail::graph_t::vertex_property_t, 
> uhd::rfnoc::node_t*>, 
> boost::property<uhd::rfnoc::detail::graph_t::edge_property_t, 
> uhd::rfnoc::graph_edge_t>, boost::no_property, 
> boost::listS>::config::stored_vertex&; std::vector<_Tp, 
> _Alloc>::size_type = long unsigned int]: Assertion '__n < 
> this->size()' failed.
>
> ./quickRun.sh: line 8: 47138 Aborted                 (core dumped) 
> ./$OUTNAME
>
>
> Environment:
>
> Fedora 34 x64
> UHD 4.0.0.0
> USRP X310 w/ UBX-160 x 2
>
> Thanks,
> Viktor
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
What happens if you sleep for perhaps 1 second prior to exiting?
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
